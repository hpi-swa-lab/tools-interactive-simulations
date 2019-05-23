as yet unclassified
benchNilValues

	| array |
	array := Array new: self entityCount.
	
	1 to: self entityCount do: [:i |
		array at: i put: (i even ifTrue: [ECSMutablePoint new x: 0.0; y: 0.0] ifFalse: [nil])].
	
	TimeProfileBrowser spyOn: [self runNilValues: array]