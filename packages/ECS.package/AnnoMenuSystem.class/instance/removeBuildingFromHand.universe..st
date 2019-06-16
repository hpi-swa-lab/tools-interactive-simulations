as yet unclassified
removeBuildingFromHand: anAnnoState universe: aUniverse

	anAnnoState buildingOnHand: #none.
	aUniverse onceRunPipelineNamed: 'BuildingPreview'.