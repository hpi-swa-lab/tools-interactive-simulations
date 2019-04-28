as yet unclassified
tick: componentsList resources: resourcesList

	componentsList do: [:components |
		components first position: (components first position
			interpolateTo: components second position
			at: resourcesList first milliseconds / 1000.0)]