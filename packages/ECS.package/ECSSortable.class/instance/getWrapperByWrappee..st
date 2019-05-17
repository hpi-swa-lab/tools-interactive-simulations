as yet unclassified
getWrapperByWrappee: aMorph

	^ self submorphs detect: [:each | each firstSubmorph = aMorph]