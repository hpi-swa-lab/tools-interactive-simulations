as yet unclassified
draw: value icon: anAsset on: aCanvas at: x

	anAsset drawOn: aCanvas at: x@0 blend: Color white.
	aCanvas drawString: value asString at: (x + 35),5 font: (TextStyle default fontOfSize: 20) color: Color white.