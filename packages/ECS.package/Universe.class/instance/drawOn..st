drawing
drawOn: aCanvas

	accesses := 0.
	self triggerEvent: #preDraw.
	drawingBlocks do: [:block | block value: aCanvas value: self].
	self triggerEvent: #postDraw