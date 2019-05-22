drawing-text
drawString: aString from: start to: stop in: aRectangle font: aStrikeFont color: aColor 

	| font |
	font := aStrikeFont ifNil: [TextStyle defaultFont].
	self clipBy: (aRectangle translateBy: origin) during: [:canvas |
		(fonts at: font ifAbsentPut: [OGLFont from: font ogl: ogl])
			drawString: aString at: aRectangle origin from: start to: stop color: aColor on: ogl]