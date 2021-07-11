as yet unclassified
specialDropCommand: aBlock

	aBlock class == ECSComponentBlock
		ifTrue: [^ SBCombinedCommand newWith: {
			SBDoItCommand new do: [
				(self universe attach: aBlock id name asSymbol to: self id persisted: true).
				
				aBlock component:( self universe getSingle: aBlock id name asSymbol of: self id).].
			(SBInsertCommand new)
				index: self submorphCount + 1;
				container: self;
				morph: aBlock;
				shouldMergeWithNext: false;
				yourself}]
		ifFalse: [^ nil]