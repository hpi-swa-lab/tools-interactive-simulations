as yet unclassified
uploadFont: aFont ogl: ogl

	font := aFont.
	textureHandles := Array new: 256.
	0 to: 255 do: [:index | | form texture |
		form := (aFont characterFormAt: index asCharacter) collectColors: [:c | Color black alpha: 1 - c red].
		texture := OGLTexture new form: form.
		ogl installTexture: texture.
		textureHandles at: index + 1 put: texture]