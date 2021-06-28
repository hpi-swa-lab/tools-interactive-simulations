as yet unclassified
specialDropCommand: aBlock

	aBlock class == ECSComponentBlock
		ifTrue: [^ SBCombinedCommand newWith: {
			SBDoItCommand new do: [self universe attach: aBlock id class name asSymbol to: self id]. 
			(SBInsertCommand new)
				index: self submorphCount + 1;
				container: self;
				morph: aBlock;
				shouldMergeWithNext: false;
				yourself}]
		ifFalse: [^ nil]