stepping and presenter
postTick

	universe query: {Mouse} do: [:mouse | mouse 
		leftJustDown: false;
		leftJustUp: false;
		rightJustUp: false;
		rightJustDown: false;
		middleJustDown: false;
		middleJustUp: false;
		wheelDelta: (ECSVector2 x: 0 y: 0)].
	self changed