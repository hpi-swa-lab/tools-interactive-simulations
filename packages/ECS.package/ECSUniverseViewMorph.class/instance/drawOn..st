drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self drawPipelineName ifNil: [^ self].
		
	[ | area headerOffset |
		headerOffset := 0 @ self header height.
		area := self position + headerOffset extent: self extent - headerOffset.
		(self universe getSingle: #UniverseView of: viewEntity) isCurrent: true; size: area extent.
		
		Display deferUpdatesIn: self bounds while: [
			aCanvas
				transformBy: (MorphicTransform offset: area origin negated)
				clippingTo: area
				during: [:transformCanvas |
					self universe canvas: transformCanvas.
					[universe onceRunPipelineNamed: self drawPipelineName]
						on: Exception do: [:e | self setProperty: #errorOnDraw toValue: true. e signal]]
				smoothing: 1]]
		ensure: [
			self universe canvas: nil.
			(self universe getSingle: #UniverseView of: viewEntity) isCurrent: false]