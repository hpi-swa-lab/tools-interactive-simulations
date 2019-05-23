component lifecyle
get: aComponentClassList of: anEntityId

	^ (aComponentClassList
		collect: [:class | (components at: class) atForRead: anEntityId])
		select: #alive