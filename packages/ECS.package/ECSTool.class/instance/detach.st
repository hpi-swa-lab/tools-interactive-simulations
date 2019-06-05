as yet unclassified
detach

	| window |
	detached := true.
	header toolIsAttached: false.
	window := self embeddedInMorphicWindowLabeled: self title.
	window model: self.
	^ window