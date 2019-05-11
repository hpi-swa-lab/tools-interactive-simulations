component lifecyle
get: aComponentClassList of: anEntityId

	^ aComponentClassList collect: [:class | (components at: class) at: anEntityId]