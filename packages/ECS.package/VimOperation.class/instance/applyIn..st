as yet unclassified
applyIn: anEditor

	appliedInterval := interval value: anEditor value: anEditor markIndex.
	anEditor selectInvisiblyFrom: appliedInterval start to: appliedInterval stop.
	previousContents := anEditor selection.
	anEditor zapSelectionWith: contents.
	anEditor selectAt: appliedInterval start.
	
	appliedInterval := appliedInterval start to: appliedInterval stop + (contents size - previousContents size)