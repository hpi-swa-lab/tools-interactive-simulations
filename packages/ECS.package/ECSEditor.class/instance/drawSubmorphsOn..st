drawing
drawSubmorphsOn: aCanvas

	super drawSubmorphsOn: aCanvas.
	
	dataFlowConnections do: [:connection | | destination start lastValues |
		start := connection source morph center.
		destination := connection destination morph center.
		aCanvas line: start to: destination width: 2 color: Color red.
		lastValues := connection destination values.
		lastValues reverseWithIndexDo: [:value :index | | bubbleCenter bubbleRectangle |
			bubbleCenter := start + ((destination - start) * index / connection destination bufferSize).
			bubbleRectangle := (value * 7) sqrt rounded asPoint center: bubbleCenter.
			
			aCanvas
				fillOval: bubbleRectangle
				color: Color cantaloupe
				borderWidth: 2
				borderColor: Color cantaloupe muchDarker]]