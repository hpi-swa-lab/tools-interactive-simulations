as yet unclassified
tick: componentsList resources: resourcesList	

	componentsList do: [:components |
		((components second position extent: components first size) containsPoint: resourcesList first position) ifTrue: [
			components third explore]]