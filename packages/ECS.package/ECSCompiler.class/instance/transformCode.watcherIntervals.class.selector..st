as yet unclassified
transformCode: aString watcherIntervals: aDictionary class: aClass selector: aSymbol

	| offset newCode |
	
	offset := 1.
	newCode := ''.
	aDictionary keysAndValuesDo: [:interval :id | | watchName |
		watchName := ECSLogger watchNameForClass: aClass method: aSymbol id: id.
		newCode := newCode, (aString copyFrom: offset to: interval start - 1).
		newCode := newCode, ('(ECSLogger at: {1} put: ({2}))' 
			format: {watchName storeString. (aString copyFrom: interval start to: interval stop)}).
		offset := interval stop + 1].
	
	^ newCode, (aString copyFrom: offset to: aString size)