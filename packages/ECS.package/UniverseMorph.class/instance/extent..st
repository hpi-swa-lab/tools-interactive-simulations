as yet unclassified
extent: aPoint

	super extent: aPoint.
	systemUniverse query: {ScreenSize} do: [:screenSize | screenSize size: self extent]