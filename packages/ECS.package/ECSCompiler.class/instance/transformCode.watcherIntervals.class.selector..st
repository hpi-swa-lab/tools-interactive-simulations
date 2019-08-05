as yet unclassified
transformCode: aString watcherIntervals: aDictionary class: aClass selector: aSymbol

	| offset newCode tmp |
	
	offset := 1.
	newCode := ''.
	tmp := aDictionary associations sortBy: [:a :b | a key start < b key start].
	tmp do: [:each | | interval id watchName |
		interval := each key.
		id := each value.
		watchName := ECSLogger watchNameForClass: aClass method: aSymbol id: id.
		newCode := newCode, (aString copyFrom: offset to: interval start - 1).
		newCode := newCode, ('(ECSLogger at: {1} put: ({2}))'
			format: {watchName storeString. (aString copyFrom: interval start to: interval stop)}).
		offset := interval stop + 1].
	
	^ newCode, (aString copyFrom: offset to: aString size)