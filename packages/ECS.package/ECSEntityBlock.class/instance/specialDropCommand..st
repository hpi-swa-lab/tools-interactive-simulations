as yet unclassified
specialDropCommand: aBlock

	aBlock class == ECSComponentBlock
		ifTrue: [^ (SBInsertCommand newNonEdit)
			index: self submorphCount + 1;
			container: self;
			morph: aBlock;
			shouldMergeWithNext: false;
			yourself.]
		ifFalse: [^ nil]