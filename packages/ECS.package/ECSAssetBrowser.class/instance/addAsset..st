as yet unclassified
addAsset: anAsset

	assetList addMorph: (ECSButton new
		icon: (ImageMorph new image: anAsset previewForm);
		when: #clicked send: #triggerEvent:with: to: self withArguments: {#picked. anAsset})