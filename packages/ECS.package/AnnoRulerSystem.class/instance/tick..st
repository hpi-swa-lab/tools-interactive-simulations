as yet unclassified
tick: aUniverse

	aUniverse query: #(AnnoCamera UniverseView) do: [:camera :view |
		aUniverse query: #(AnnoState) do: [:state | | screenSize canvas mouse |
			camera := camera position.
			canvas := aUniverse canvas.
			screenSize := view size.
			mouse := view mousePosition.
	
			canvas drawString: state buildingOnHand at: 20@20 font: nil color: Color white.
			
			self drawRulers: canvas camera: camera screenSize: screenSize.
			
			"Origin"
			canvas fillRectangle: (ECSAlignedRectangle origin: (0,0) + camera extent: 3,3) color: Color bubblegum.
			canvas drawString: '0, 0' at: (0,0) + camera font: nil color: Color bubblegum.
			
			self drawChunkBorders: canvas camera: camera screenSize: screenSize.
			
			"Mouse position"
			canvas fillRectangle: (50@50 extent: 200@TextStyle defaultFont height) color: Color black.
			canvas drawString: 'Hovered map tile: ', (AnnoHelpers pixelToMapPosition: mouse - camera)
				at: 50@50 font: nil color: Color white]]