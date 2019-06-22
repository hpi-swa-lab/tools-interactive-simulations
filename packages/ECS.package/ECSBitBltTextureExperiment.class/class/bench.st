as yet unclassified
bench

	| c image p |
	p := 0 @ 0.
	image := (ECSImageAsset of: #anno at: '0.png' sized: 64 , 31) object.
	image := image scaledToSize: (64 * 4) @ (31 * 4).
	[
	c := Display getCanvas.
	1 to: 156 do: [:i | c image: image at: p rule: Form paint]
	] bench

	"over:   '107 per second. 9.38 milliseconds per run.'
	paint:   '39.2 per second. 25.5 milliseconds per run.'


	paint:       '38.9 per second. 25.7 milliseconds per run.'
	paint x4:   '47.5 per second. 21.1 milliseconds per run.'"