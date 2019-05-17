as yet unclassified
initialize

	super initialize.
	
	previewForm := Form extent: ECSAsset previewSize depth: 32.
	previewForm getCanvas fillColor: (Color r: 1 g: 0 b: 1).