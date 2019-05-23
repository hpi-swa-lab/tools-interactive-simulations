as yet unclassified
profile

	" self profile "

	| components |
	components := self new sized: ECSStorageExperimentConfig entityCount.
	TimeProfileBrowser spyOn: [self bench: components]