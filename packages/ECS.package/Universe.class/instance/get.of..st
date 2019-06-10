component lifecyle
get: aComponentClassList of: anEntityId

	^ (aComponentClassList
		collect: [:class | (components at: class ifAbsent: [^ #()]) atForFetch: anEntityId])
		select: #alive