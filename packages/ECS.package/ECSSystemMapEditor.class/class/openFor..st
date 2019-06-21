instance creation
openFor: aUniverse

	| tool |
	tool := (self newFor: aUniverse).
	tool detach openInWorld; expandToFullScreen.
	^ tool