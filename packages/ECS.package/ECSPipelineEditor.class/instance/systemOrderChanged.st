universe-callbacks
systemOrderChanged

	pipeline systems withIndexDo: [:each :index |
		list moveItem: (systemsInUI at: each) to: index]