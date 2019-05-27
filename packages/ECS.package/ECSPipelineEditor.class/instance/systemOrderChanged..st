as yet unclassified
systemOrderChanged: aPipeline

	aPipeline = pipeline ifFalse: [^ self].
	self assert: [aPipeline systems size = list submorphCount].
	self universe systems withIndexDo: [:each :index |
		list moveItem: (systemsInUI at: each) to: index]