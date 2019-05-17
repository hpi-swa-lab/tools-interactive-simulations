as yet unclassified
initialize

	super initialize.
	
	self header: (nameLabel := ECSLabel new).
	self body: ECSColumn new