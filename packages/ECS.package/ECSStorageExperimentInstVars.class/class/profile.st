as yet unclassified
profile
	"self profile"
	
	| components |
	"components := OrderedCollection new.
	ECSStorageExperimentConfig entityCount timesRepeat: [components add: (self new color: Color red; x: 0; y: 0)]."
	components := Array new: ECSStorageExperimentConfig entityCount.
	components doWithIndex: [:c :i | components at: i put: (self new color: Color red; x: 0; y: 0)].

	TimeProfileBrowser spyOn: [self bench: components].