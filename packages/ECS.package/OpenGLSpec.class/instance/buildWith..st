as yet unclassified
buildWith: aBuilder

	| widget |
	widget := SystemWorldMorph new.
	widget systemWorld: model.
	aBuilder setFrame: self frame in: widget.
	aBuilder setLayoutHintsFor: widget spec: self.
	aBuilder parent ifNotNil: [aBuilder add: widget to: aBuilder parent].
	^ widget