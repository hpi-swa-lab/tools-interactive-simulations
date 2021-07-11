as yet unclassified
newFrom: aSystem

	"| system |
	
	system :=  self new
		title: aSystem class asString;
		id: aSystem class;
		system: aSystem.
	system addMorphBack: (ECSMethodBlock newWith: system id).
	
	 ^ system"