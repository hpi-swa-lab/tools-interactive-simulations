as yet unclassified
openFor: aUniverse

	| tool |
	tool := (self newFor: aUniverse).
	tool detach openInWorld; expandToFullScreen.
	^ tool