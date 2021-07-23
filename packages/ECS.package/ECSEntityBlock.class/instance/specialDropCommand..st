dropping/grabbing
specialDropCommand: aBlock

	aBlock class = ECSComponentBlock
		ifTrue: [^ SBCombinedCommand newWith: {
			SBDoItCommand new do: [
				self universe attach: aBlock id name asSymbol to: self id persisted: true.
				aBlock entityId: self id].
			SBInsertCommand new
				index: self submorphCount + 1;
				container: self;
				morph: aBlock;
				shouldMergeWithNext: false;
				yourself}]
		ifFalse: [^ nil]