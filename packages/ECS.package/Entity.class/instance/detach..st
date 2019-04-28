as yet unclassified
detach: aComponentClass

	components remove: (components detect: [:component | component class = aComponentClass])