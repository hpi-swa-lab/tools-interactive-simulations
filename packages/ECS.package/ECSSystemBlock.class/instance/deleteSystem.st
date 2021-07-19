deleting
deleteSystem

	| pipeline |
	
	self deleteBlock.
	pipeline := self class gamePipelineIn: self universe.
	pipeline systems removeAllSuchThat: [:system | self id class = system class].
	self triggerEvent: #deleteElement with: self