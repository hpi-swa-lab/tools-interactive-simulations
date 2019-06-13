as yet unclassified
bottomPanelToolsClasses

	| classes |
	classes := super bottomPanelToolsClasses.
	classes remove: ECSFrameBreakdown ifAbsent:[].
	^ classes