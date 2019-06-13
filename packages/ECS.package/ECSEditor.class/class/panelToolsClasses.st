as yet unclassified
panelToolsClasses

	^ PanelToolsClasses ifNil: [PanelToolsClasses := Dictionary new.
		PanelToolsClasses
			at: #bottomPanel
			put: (OrderedCollection new
				add: ECSControlBar;
				add: ECSSnapshotReplay;
				add: ECSFrameBreakdown;
				yourself);
			at: #leftPanel
			put: (OrderedCollection new
				add: ECSTemplateBrowser;
				add: ECSStatsDisplay;
				yourself);
			at: #rightPanel
			put: (OrderedCollection new
				add: ECSMultiPipelineEditor;
				add: ECSComponentBrowser;
				add: ECSEntityComponentFilter;
				yourself);
			yourself]