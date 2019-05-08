as yet unclassified
uploadFont: aFont ogl: ogl

	font := aFont.
	textureHandles := Array new: 128.
	0 to: 127 do: [:index | | form texture |
		form := (aFont characterFormAt: index asCharacter) collectColors: [:c | Color white alpha: 1 - c red].
		texture := OGLTexture new form: form.
		ogl installTexture: texture.
		textureHandles at: index + 1 put: texture]