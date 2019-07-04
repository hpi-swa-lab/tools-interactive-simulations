as yet unclassified
report: anInteger components: aCollection

	((aCollection collect: #value) hasEqualElements: components) ifTrue: [
		morph system class == AnnoStateSystem ifTrue: [.
		self haltOnce].
		hadReport := true.
		self report: anInteger]