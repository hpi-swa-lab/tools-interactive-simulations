as yet unclassified
profile
	"self profile"
	
	| components |
	components := self new sized: ECSStorageExperimentConfig entityCount.
	TimeProfileBrowser spyOn: [ECSStorageExperimentSingleArray bench: components].