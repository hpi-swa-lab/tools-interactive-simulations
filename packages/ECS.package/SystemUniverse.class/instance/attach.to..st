component lifecyle
attach: aComponent to: anEntityId

	(components at: aComponent class ifAbsentPut: [aComponent class storage new]) at: anEntityId put: aComponent