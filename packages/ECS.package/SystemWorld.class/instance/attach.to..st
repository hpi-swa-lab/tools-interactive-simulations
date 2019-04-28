as yet unclassified
attach: aComponent to: anEntityId

	(components at: aComponent class ifAbsentPut: [VectorStorage new]) at: anEntityId put: aComponent