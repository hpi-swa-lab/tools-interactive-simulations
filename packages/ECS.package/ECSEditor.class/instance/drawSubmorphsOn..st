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
			"https://www.wolframalpha.com/input/?i=plot+-5000%2F(x%2B170)%2B30+from+0+to+50"
			"plot -5000/(x+170)+30 from 0 to 50"
			bubbleRectangle := (-5000 / (value + 170) + 30) ceiling asPoint center: bubbleCenter.
			
			aCanvas
				fillOval: bubbleRectangle
				color: Color cantaloupe
				borderWidth: 2
				borderColor: Color cantaloupe muchDarker]]