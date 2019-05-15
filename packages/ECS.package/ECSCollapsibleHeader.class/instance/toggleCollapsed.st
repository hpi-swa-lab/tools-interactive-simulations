as yet unclassified
toggleCollapsed

	self triggerEvent: #toggleCollapsible.
	toggleButton icon changeIconName: (toggleButton icon iconName = #iconChevron_down
		ifTrue: [#iconChevron_right]
		ifFalse: [#iconChevron_down]).