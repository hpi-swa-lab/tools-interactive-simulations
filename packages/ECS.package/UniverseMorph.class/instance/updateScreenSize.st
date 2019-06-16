geometry
updateScreenSize

	universe query: #(ScreenSize) do: [:screenSize | screenSize size: self extent asECSVector2]