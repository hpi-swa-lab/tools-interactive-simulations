as yet unclassified
saveCurrentToolConfigurationAsStandard

	| rightPanelClasses bottomPanelClasses leftPanelClasses |
	bottomPanelClasses := (panels at: #bottomPanel) submorphs asOrderedCollection collect: [:tool | tool class].
	leftPanelClasses := (panels at: #leftPanel) submorphs asOrderedCollection collect: [:tool | tool class].
	rightPanelClasses := (panels at: #rightPanel) submorphs asOrderedCollection collect: [:tool | tool class].

	self class panelToolsClasses
		at: #bottomPanel
		put: bottomPanelClasses;
		at: #leftPanel
		put: leftPanelClasses;
		at: #rightPanel
		put: rightPanelClasses