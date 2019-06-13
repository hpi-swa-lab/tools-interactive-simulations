stepping and presenter
postTick

	universe query: #(Mouse) do: [:mouse | mouse 
		leftJustDown: false;
		leftJustUp: false;
		rightJustUp: false;
		rightJustDown: false;
		middleJustDown: false;
		middleJustUp: false;
		wheelDelta: 0, 0;
		positionDelta: 0, 0].
	self changed