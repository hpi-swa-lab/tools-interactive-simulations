drawing-support
clipBy: aRectangle during: aBlock

	self scissorRect: (aRectangle translateBy: worldOrigin negated).
	aBlock value: (self copyClipRect: aRectangle).
	self scissorRect: clipRect