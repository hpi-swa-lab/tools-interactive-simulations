as yet unclassified
transformCode: aString class: aClass selector: aSymbol

	| beginMatcher beginMatches endMatcher endMatches offset newCode index |
	beginMatcher := RxMatcher forString: '"<"'.
	endMatcher := RxMatcher forString: '">"'.
	
	beginMatches := beginMatcher matchingRangesIn: aString.
	endMatches := endMatcher matchingRangesIn: aString.
	self assert: beginMatches size = endMatches size.
	
	offset := 1.
	newCode := ''.
	index := 1.
	beginMatches with: endMatches do: [:begin :end | | watchName |
		watchName := aClass name, '>>', aSymbol, '>>', index asString.
		newCode := newCode, (aString copyFrom: offset to: begin start - 1).
		newCode := newCode, '(ECSLogger at: #''{1}'' put: ({2}))' 
			format: {watchName. (aString copyFrom: begin stop + 1 to: end start - 1)}.
		offset := end stop + 1.
		index := index + 1].
	
	newCode := newCode, (aString copyFrom: offset to: aString size).
	
	^ newCode