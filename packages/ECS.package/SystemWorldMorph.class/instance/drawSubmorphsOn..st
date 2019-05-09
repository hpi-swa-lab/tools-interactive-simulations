as yet unclassified
drawSubmorphsOn: aCanvas
	"Display submorphs on our ogl canvas back to front"

	| drawBlock |
	submorphs isEmpty ifTrue: [^self].
	drawBlock := [:c | submorphs reverseDo: [:m | c fullDrawMorph: m]].
	self clipSubmorphs 
		ifTrue: [canvas clipBy: self clippingBounds during: drawBlock]
		ifFalse: [drawBlock value: canvas]