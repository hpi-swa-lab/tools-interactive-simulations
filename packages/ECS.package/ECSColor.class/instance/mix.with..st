as yet unclassified
mix: aNumber with: aColor

	self
		red: (self red interpolateTo: aColor red at: aNumber);
		green: (self green interpolateTo: aColor green at: aNumber);
		blue: (self blue interpolateTo: aColor blue at: aNumber)