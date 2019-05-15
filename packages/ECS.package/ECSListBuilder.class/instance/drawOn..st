as yet unclassified
drawOn: aCanvas

	| bottomRow topRow shouldDisplay |
	topRow := self topVisibleRowForCanvas: aCanvas.
	bottomRow := self bottomVisibleRowForCanvas: aCanvas.
	
	shouldDisplay := topRow to: bottomRow.
	shouldDisplay ~= currentlyDisplayed ifTrue: [ | previousCache |
		previousCache := cache.
		cache := Dictionary new.
		
		topRow to: bottomRow do: [:row | | item |
			item := previousCache at: row ifPresent: [:i | previousCache removeKey: row. i] ifAbsent: [self builder value: row].
			cache at: row put: item.
			item bounds: (self drawBoundsForRow: row).
			self addMorphBack: item].
		
		previousCache valuesDo: [:m | self removeMorph: m]]