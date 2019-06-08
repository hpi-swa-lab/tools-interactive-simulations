as yet unclassified
picked: anAsset

	| parameterValues |
	parameterValues := (2 to: parameters submorphCount by: 2) collect: [:i | (parameters submorphs at: i) value].
	self triggerEvent: #picked with: (anAsset mutateWithParameters: parameterValues).
	self closeOnPick ifTrue: [self owner delete]