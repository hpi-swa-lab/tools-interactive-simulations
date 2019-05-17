as yet unclassified
addAsset: anAsset

	assetList addMorph: (ECSButton new
		icon: (ImageMorph new image: anAsset previewForm);
		when: #clicked send: #picked: to: self with: anAsset)