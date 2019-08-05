as yet unclassified
tick: aUniverse

	| chunks tmp chunkPositions corners minDiff minSum maxDiff maxSum |
	chunkPositions := Set new.
		
	aUniverse query: #(AnnoCamera UniverseView) filter: [:camera :view | camera generateWorld] do: [:camera :screenSize |
		"camera justMoved ifFalse: [^ self]." "todo: Should also listen for changes to screen size"
		camera := camera position.
		screenSize := screenSize size.
			
		corners := ECSAlignedRectangle origin: camera negated extent: screenSize.

		tmp := ((AnnoHelpers pixelToMapPosition: corners topLeft) / ChunkSize) round.
		tmp := tmp - (2, 0).
		minSum := tmp x + tmp y.
		minDiff := tmp x - tmp y.
		tmp := ((AnnoHelpers pixelToMapPosition: corners bottomRight) / ChunkSize) round.
		tmp := tmp + (2, 0).
		maxSum := tmp x + tmp y.
		maxDiff := tmp x - tmp y.
	
		minSum to: maxSum do: [:sum | "constant for screen x"
			minDiff to: maxDiff do: [:diff | "constant for screen y" 
				| x y |
				x := ((diff + sum) / 2) truncated.
				y := ((sum - diff) / 2) truncated.
				chunkPositions add: x, y]]].
	
	chunks := aUniverse queryList: #(id AnnoChunk).
	tmp := chunks groupBy: [:chunk | chunkPositions includes: chunk second position].
	chunkPositions do: [:chunkPos |
		(((tmp at: true ifAbsent: [Array new]) collect: [:each | each second position]) includes: chunkPos) ifFalse: [
			self generateChunk: chunkPos universe: aUniverse]].

	tmp at: false ifPresent: [:chunksToDelete | 
		chunksToDelete do: [:each | aUniverse remove: each first].
		aUniverse query: #(id AnnoTile) do: [:id :annoTile |
			((chunkPositions includes: annoTile chunkPos) or: [annoTile isPreview] or: [annoTile isBuiltByPlayer]) ifFalse: [aUniverse remove: id]]]