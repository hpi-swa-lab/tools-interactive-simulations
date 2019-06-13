drawing
drawOn: aCanvas

	accesses := 0.
	self triggerEvent: #preDraw.
	drawingBlocks do: [:block | | system | 
		system := block outerContext receiver.
		self triggerEvent: #preDrawBlock with: system.
		block value: aCanvas value: self.
		self triggerEvent: #postDrawBlock with: system].
	self triggerEvent: #postDraw