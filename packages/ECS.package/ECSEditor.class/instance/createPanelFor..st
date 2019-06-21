initialization
createPanelFor: aCollectionOfToolClasses

	| panel |
	panel := ECSPanel new.
	aCollectionOfToolClasses do: [:toolClass |
			panel addMorphBack: (toolClass newFor: universe)].
	^ panel