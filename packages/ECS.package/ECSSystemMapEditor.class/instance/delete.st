as yet unclassified
delete

	((self submorphs anySatisfy: #hasUnacceptedEdits) not or: [UIManager default confirm: 'Discard unsaved changes?']) ifTrue: [super delete]