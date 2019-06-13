accessing
buildWidgetForItem: anItem parent: aMorph

	| morph |
	morph := ECSTreeItem new
		hasChildren: (self childItemsForItem value: anItem) notEmpty;
		addMorphBack: (self widgetForItem value: anItem).
	morph when: #expand send: #expandItem:morph: to: self withArguments: {anItem. morph}.
	morph when: #collapse send: #collapseItem:morph: to: self withArguments: {anItem. morph}.
	morph when: #selected send: #setSelected:morph: to: self withArguments: {anItem. morph}.
	
	morph layoutInset: (Rectangle left: (aMorph ifNil: [0] ifNotNil: [aMorph layoutInset left + self indent]) right: 0 top: 0 bottom: 0).
	
	^ morph