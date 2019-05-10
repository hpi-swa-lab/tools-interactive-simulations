as yet unclassified
drawOn: aCanvas
	
	aCanvas transformBy: (MorphicTransform offset: 30 @ 30) clippingTo: (0 @ 0 extent: 100 @ 100) during: [:canvas |
		aCanvas frameAndFillRectangle: self bounds fillColor: Color red borderWidth: 6 borderColor: Color green] smoothing: 0.
	
	"aCanvas clipBy: (10 @ 10 extent: 20 @ 20) during: [:canvas |
		aCanvas frameAndFillRectangle: self bounds fillColor: Color red borderWidth: 6 borderColor: Color green]."
	
	"aCanvas frameAndFillRectangle: self bounds fillColor: Color red borderWidth: 6 borderColor: Color green"