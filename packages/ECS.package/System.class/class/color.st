as yet unclassified
color

	| hash |
	hash := self name hash.
	^ Color basicNew
		setHue: hash \\ 36000 / 100
		saturation: 0.3 + (hash \\ 7000 / 10000)
		brightness: 0.4 + (hash \\ 6000 / 10000)