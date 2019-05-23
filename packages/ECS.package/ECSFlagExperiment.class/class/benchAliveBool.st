as yet unclassified
benchAliveBool

	| array |
	array := Array new: self entityCount.
	
	1 to: self entityCount do: [:i |
		array at: i put: (ECSComponentWithAlive new x: 0.0; y: 0.0; alive: i even)].
	
	TimeProfileBrowser spyOn: [self runAliveBool: array]