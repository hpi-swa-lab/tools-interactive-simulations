as yet unclassified
result

	(hasReadAccess and: [hasWriteAccess]) ifTrue: [^ #(read write)].
	hasReadAccess ifTrue: [^ #(read)].
	hasWriteAccess ifTrue: [^ #(write)].
	^ #()