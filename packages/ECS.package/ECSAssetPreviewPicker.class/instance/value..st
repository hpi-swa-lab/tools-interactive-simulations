as yet unclassified
value: anAsset

	| form |
	anAsset = asset ifFalse: [
		asset := anAsset.
		form := (anAsset ifNotNil: #previewForm) ifNil: [ImageMorph defaultForm].
		image image: form.
		self balloonText: anAsset storeString]