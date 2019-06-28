as yet unclassified
transformCode: aString watcherIntervals: aCollection class: aClass selector: aSymbol

	| offset newCode |
	
	offset := 1.
	newCode := ''.
	aCollection withIndexDo: [:each :index | | watchName |
		watchName := (aClass name, '>>#', aSymbol, '>>', index asString) asSymbol.		
		newCode := newCode, (aString copyFrom: offset to: each start - 1).
		newCode := newCode, ('(ECSLogger at: {1} put: ({2}))' 
			format: {watchName storeString. (aString copyFrom: each start to: each stop)}).
		offset := each stop + 1].
	
	^ newCode, (aString copyFrom: offset to: aString size)