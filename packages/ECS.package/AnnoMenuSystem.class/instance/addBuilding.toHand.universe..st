as yet unclassified
addBuilding: data toHand: anAnnoState universe: aUniverse

	anAnnoState buildingOnHand: data first.
	aUniverse onceRunPipelineNamed: 'BuildingPreview'.