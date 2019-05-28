as yet unclassified
systemOrderChanged

	pipeline systems withIndexDo: [:each :index |
		list moveItem: (systemsInUI at: each) to: index]