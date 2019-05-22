as yet unclassified
mix: aNumber with: aColor

	self
		red: (aColor red interpolateTo: aColor red at: aNumber) rounded;
		green: (aColor green interpolateTo: aColor blue at: aNumber) rounded;
		blue: (aColor green interpolateTo: aColor blue at: aNumber) rounded