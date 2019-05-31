stepping and presenter
postTick

	systemUniverse query: {Mouse} do: [:mouse | mouse 
		leftJustDown: false; 
		leftJustUp: false; 
		wheelDelta: (ECSVector2 x: 0 y: 0)].
	self changed