as yet unclassified
systemOrderChanged

	self assert: [self universe systems size = list submorphCount].
	self universe systems withIndexDo: [:each :index |
		list moveItem: (systemsInUI at: each) to: index]