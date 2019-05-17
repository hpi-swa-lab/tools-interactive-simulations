as yet unclassified
removeItem: aMorph

	self removeMorph: (self submorphs detect: [:each | each firstSubmorph = aMorph])