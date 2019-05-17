as yet unclassified
picked: anAsset

	self triggerEvent: #picked with: anAsset.
	self closeOnPick ifTrue: [self owner delete]