as yet unclassified
mix: aNumber with: aColor

	self
		red: (aColor red interpolateTo: aColor red at: aNumber);
		green: (aColor green interpolateTo: aColor green at: aNumber);
		blue: (aColor green interpolateTo: aColor blue at: aNumber)