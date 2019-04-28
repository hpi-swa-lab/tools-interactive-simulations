as yet unclassified
setUp

	systems do: [:s | s setUp: self].
	
	self start.
	self changed: #expandRootsRequested