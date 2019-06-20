as yet unclassified
openNewTool

	| chosenTool availableTools |
	
	availableTools := ECSTool allSubclasses.
	
	chosenTool := UIManager default
		chooseFrom: availableTools
		values: availableTools.
		
	chosenTool ifNil: [^ self].
	
	chosenTool openFor: self universe