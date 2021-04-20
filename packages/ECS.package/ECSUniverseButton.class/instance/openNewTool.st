universe interaction
openNewTool

	| chosenTool availableTools |
	
	availableTools := ECSTool allSubclasses.
	
	chosenTool := UIManager default
		chooseFrom: (availableTools collect: #asString)
		values: availableTools.
		
	chosenTool ifNil: [^ self].
	
	chosenTool openFor: self universe