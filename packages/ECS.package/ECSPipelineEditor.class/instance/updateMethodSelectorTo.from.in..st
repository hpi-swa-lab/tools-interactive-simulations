as yet unclassified
updateMethodSelectorTo: aNewSelector from: anOldSelector in: aSystem

	" not currently in use or functional, to be completed. "
	self halt.
	(nonRequiredFunctionsInUI at: aSystem) at: anOldSelector ifPresent: [:assoc |
		assoc key: aNewSelector.
		assoc value firstSubmorph firstSubmorph contents: aNewSelector asString] ifAbsent: []