as yet unclassified
renderOutlineOf: aWorld

	| offset |
	offset := font height * 2.
	aWorld query: {#id} do: [:components | | desc |
		ogl glColor3f: 1.0 with: 1.0 with: 1.0.
		
		desc := String streamContents: [:str |
			str nextPutAll: components first asString; nextPut: $(.
			aWorld allComponentsOf: components first do: [:component | str nextPutAll: component className; nextPut: $,].
			str nextPut: $)].
		
		font drawString: desc at: 0 @ offset @ 0 on: ogl.
		offset := offset + font height]