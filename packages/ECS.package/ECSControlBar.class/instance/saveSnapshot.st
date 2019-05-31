as yet unclassified
saveSnapshot

	| class store |
	store := self universe storeString.
	class :=  (UIManager default chooseClassOrTrait: 'Where to save? (will overwrite #initialize)') ifNil: [^ self].
	class compile: 'initialize', String cr, String cr, '^ ', store