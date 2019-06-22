drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self drawPipelineName ifNil: [^ self].
		
	[
		(self universe getSingle: #UniverseView of: viewEntity) isCurrent: true; size: self extent.
		
		Display deferUpdatesIn: self bounds while: [
			aCanvas
				transformBy: (MorphicTransform offset: self position negated)
				clippingTo: self innerBounds
				during: [:transformCanvas |
					self universe canvas: transformCanvas.
					[universe onceRunPipelineNamed: self drawPipelineName]
						on: Exception do: [:e | self setProperty: #errorOnDraw toValue: true. e signal]]
				smoothing: 1]]
		ensure: [
			self universe canvas: nil.
			(self universe getSingle: #UniverseView of: viewEntity) isCurrent: false]