updating
okToClose

	^ (self submorphs anySatisfy: #hasUnacceptedEdits) not or: [UIManager default confirm: 'Discard unsaved changes?']