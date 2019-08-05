as yet unclassified
drawOn: aCanvas at: aVector2 blend: aColor

	aCanvas
		image: bundle form
		at: aVector2
		sourceRect: (identifier origin * (identifier extent + (1 , 1)) extent: identifier extent)
		rule: Form paintAlpha
		alpha: aColor alpha