replay
sendEvent: anEvent from: aViewId

	anEvent type caseOf: {
		[#mouseWheel] -> [self universe handleMouseWheel: anEvent from: aViewId].
		[#mouseMove] -> [self universe handleMouseMove: anEvent from: aViewId].
		[#mouseDown] -> [self universe handleMouseDown: anEvent from: aViewId].
		[#mouseUp] -> [self universe handleMouseUp: anEvent from: aViewId].
		[#keyDown] -> [self universe handleKeyDown: anEvent from: aViewId].
		[#keyUp] -> [self universe handleKeyUp: anEvent from: aViewId].
		[#editorEvent] -> [self universe handleEditorEvent: anEvent]
	} otherwise: [self error: 'unknown event type recorded']