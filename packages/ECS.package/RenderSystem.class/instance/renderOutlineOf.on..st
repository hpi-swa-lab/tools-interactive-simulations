as yet unclassified
renderOutlineOf: aWorld on: aCanvas

	| offset |
	offset := TextStyle defaultFont height * 2.
	aWorld query: {#id} do: [:components | | desc |
		desc := String streamContents: [:str |
			str nextPutAll: components first asString; nextPut: $(.
			aWorld allComponentsOf: components first do: [:component | str nextPutAll: component className; nextPut: $,].
			str nextPut: $)].
		
		aCanvas drawString: desc at: 0 @ offset.
		offset := offset + TextStyle defaultFont height]