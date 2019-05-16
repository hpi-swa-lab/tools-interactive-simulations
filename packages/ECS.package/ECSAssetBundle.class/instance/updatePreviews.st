as yet unclassified
updatePreviews

	assets := Dictionary new.
	self path fileEntries do: [:file | assets at: file name put: (ECSAsset new updatePreview: file)]