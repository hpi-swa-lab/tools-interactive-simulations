initialization
drawSubmorphsOn: aCanvas

	super drawSubmorphsOn: aCanvas.
	
	dataFlowConnections do: [:connection |
		aCanvas line: connection source morph center to: connection destination morph center width: 2 color: Color red]