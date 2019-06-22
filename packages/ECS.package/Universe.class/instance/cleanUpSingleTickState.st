mainloop
cleanUpSingleTickState

	self query: #(UniverseView) do: [:view | view 
		leftJustDown: false;
		leftJustUp: false;
		rightJustUp: false;
		rightJustDown: false;
		wheelDelta: 0, 0;
		mousePositionDelta: 0, 0]