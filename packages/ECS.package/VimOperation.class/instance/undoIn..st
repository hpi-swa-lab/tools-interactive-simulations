as yet unclassified
undoIn: anEditor

	anEditor selectInvisiblyFrom: appliedInterval start to: appliedInterval stop.
	anEditor zapSelectionWith: previousContents.
	anEditor selectAt: previousCursor.
	^ previousOperation