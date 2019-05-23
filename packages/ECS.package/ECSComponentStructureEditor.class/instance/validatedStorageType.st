as yet unclassified
validatedStorageType

	| storageType |
	storageType := storageTypeMorph text asSymbol.
	storageType := Smalltalk at: storageType ifAbsent: [
		self validationError: 'The given storage type does not exist.'].
	Storage allSubclasses detect: [:each | each = storageType] ifNone: [
		self validationError: 'The storage type must be a subclass of Storage'].
	^ storageType