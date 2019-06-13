as yet unclassified
tick: aUniverse

	| camera chunks tmp screenSize chunkPositions corners minDiff minSum maxDiff maxSum |
	tmp := (aUniverse queryList: {AnnoCamera. ScreenSize}).
	tmp ifEmpty: [^ self].
	camera := tmp first first position.
	screenSize := tmp first second size.
		
	corners := ECSAlignedRectangle origin: camera negated extent: screenSize.

	tmp := ((self pixelToMapPosition: corners topLeft) / ChunkSize) round.
	tmp := tmp - (2, 0).
	minSum := tmp x + tmp y.
	minDiff := tmp x - tmp y.
	tmp := ((self pixelToMapPosition: corners bottomRight) / ChunkSize) round.
	tmp := tmp + (2, 0).
	maxSum := tmp x + tmp y.
	maxDiff := tmp x - tmp y.
	
	chunkPositions := Set new.
	minSum to: maxSum do: [:sum | "constant for screen x"
		minDiff to: maxDiff do: [:diff | "constant for screen y" 
			| x y |
			x := ((diff + sum) / 2) truncated.
			y := ((sum - diff) / 2) truncated.
			chunkPositions add: x, y]].
	
	chunks := aUniverse queryList: {#id. AnnoChunk}.
	tmp := chunks groupBy: [:chunk | chunkPositions includes: chunk second position].
	chunkPositions do: [:chunkPos |
		(((tmp at: true ifAbsent: [Array new]) collect: [:each | each second position]) includes: chunkPos) ifFalse: [
			self generateChunk: chunkPos universe: aUniverse]].
	
	"Transcript 
		showln: '---';
		showln: chunkPositions;
		showln: ((tmp at: true ifAbsent: [Array new]) collect: [:each | each second position]);
		showln: (tmp at: false ifAbsent: [{}])."
	
	tmp at: false ifPresent: [:chunksToDelete | 
		chunksToDelete do: [:each | aUniverse remove: each first].
		aUniverse query: {#id. AnnoTile} do: [:id :annoTile |
			(chunkPositions includes: annoTile chunkPos) ifFalse: [aUniverse remove: id]]]