as yet unclassified
addAsset: anAsset

	assetList addMorph: (ECSButton new
		icon: (ImageMorph new image: anAsset previewForm);
		balloonText: anAsset identifier storeString;
		when: #clicked send: #picked: to: self with: anAsset)