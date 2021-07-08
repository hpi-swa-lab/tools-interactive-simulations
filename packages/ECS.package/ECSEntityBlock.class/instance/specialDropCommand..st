as yet unclassified
specialDropCommand: aBlock

	aBlock class == ECSComponentBlock
		ifTrue: [^ SBCombinedCommand newWith: {
			SBDoItCommand new do: [aBlock component: (self universe attach: aBlock id name asSymbol to: self id)].
			(SBInsertCommand new)
				index: self submorphCount + 1;
				container: self;
				morph: aBlock;
				shouldMergeWithNext: false;
				yourself}]
		ifFalse: [^ nil]