geometry
extent: aPoint

	super extent: aPoint.
	universe query: #(ScreenSize) do: [:screenSize | screenSize size: self extent asECSVector2]