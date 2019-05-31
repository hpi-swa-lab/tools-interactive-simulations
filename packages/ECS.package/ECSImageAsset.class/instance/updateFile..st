as yet unclassified
updateFile: aFileDirectory

	object := Form fromFileNamed: aFileDirectory fullName.
	previewForm := object scaledIntoFormOfSize: ECSAsset previewSize