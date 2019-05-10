drawing-support
paragraph: paragraph bounds: bounds color: c

	| scanner |
	scanner := DisplayScanner new text: paragraph text textStyle: paragraph textStyle
		foreground: c background: Color transparent fillBlt: self
		ignoreColorChanges: false.
	scanner setPort: self.
	paragraph displayOn: (self copyClipRect: bounds) using: scanner at: bounds topLeft