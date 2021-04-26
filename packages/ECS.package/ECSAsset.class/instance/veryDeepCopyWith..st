as yet unclassified
veryDeepCopyWith: deepCopier

	| oldBundle copy |
	oldBundle := bundle.
	bundle := nil.
	copy := super veryDeepCopyWith: deepCopier.
	bundle := oldBundle.
	copy bundle: oldBundle.
	^ copy