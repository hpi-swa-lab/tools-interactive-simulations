drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self drawPipelineName ifNil: [^ self].
	(self universe getSingle: #UniverseView of: viewEntity) ifNil: [^ self].
	
	self universe triggerEvent: #preDraw.
	[ | area |
		area := self position extent: self extent.
		(self universe getSingle: #UniverseView of: viewEntity)
			isCurrent: true;
			size: area extent.
		
		Display deferUpdatesIn: self bounds while: [
			aCanvas
				transformBy: (MorphicTransform offset: area origin negated)
				clippingTo: area
				during: [:transformCanvas |
					self universe canvas: transformCanvas.
					[self runDrawPipeline] on: Exception do: [:e |
						self setProperty: #errorOnDraw toValue: true.
						e signal]]
				smoothing: 1]] ensure: [
		self universe canvas: nil.
		self universe triggerEvent: #postDraw.
		(self universe getSingle: #UniverseView of: viewEntity) isCurrent: false]