as yet unclassified
drawRulers: aCanvas camera: camera screenSize: screenSize

	| offset |
	offset := camera \\ TileSize.
	Distance y + offset y to: screenSize y by: Distance y do: [:y | | color |
		color := self colorForRulerAt: y - camera y.
		aCanvas fillRectangle: (ECSAlignedRectangle origin: 0,y extent: Length,1) color: color.
		aCanvas drawString: (y - camera y) asString at: (0,y) font: nil color: color].
	Distance x + offset x to: screenSize x by: Distance x do: [:x | | color |
		color := self colorForRulerAt: x - camera x.
		aCanvas fillRectangle: (ECSAlignedRectangle origin: x,0 extent: 1,Length) color: color.
		aCanvas drawString: (x - camera x) asString at: (x, 0) font: nil color: color].
	
	