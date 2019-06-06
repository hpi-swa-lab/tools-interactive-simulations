as yet unclassified
sizeForWidth: aNumber

	^ (textMorph paragraphClass new
		compose: textMorph text
		style: textMorph textStyle
		from: 1
		in: (0 @ 0 extent: aNumber @ 9e8);
		extent) + (0 @ self extraSpacing)