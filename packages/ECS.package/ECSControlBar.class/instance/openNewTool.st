button methods
openNewTool

	| chosenTool availableTools |
	
	availableTools := ECSTool subclasses.
	
	chosenTool := UIManager default
		chooseFrom: availableTools
		values: availableTools.
		
	chosenTool ifNil: [^ self].
	
	chosenTool openFor: self universe