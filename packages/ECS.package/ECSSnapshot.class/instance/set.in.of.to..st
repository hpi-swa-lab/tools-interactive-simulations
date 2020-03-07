as yet unclassified
set: aFieldSymbol in: aComponentClass of: anEntityNumber to: anObject

	self flag: #fixme. " no alive check, could result in undefined behavior "
	((self storageOf: aComponentClass) atForFetch: anEntityNumber) perform: aFieldSymbol asSimpleSetter with: anObject