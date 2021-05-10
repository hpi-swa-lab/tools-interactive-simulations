as yet unclassified
filepathForDirectory: aDirectory identifier: anObject

	anObject isString ifTrue: [^ aDirectory].
	^ aDirectory entries
		detect: [:entry | entry name endsWith: '.png']
		ifFound: [:entry | aDirectory / entry name]
		ifNone: [nil]