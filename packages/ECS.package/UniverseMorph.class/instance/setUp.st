as yet unclassified
setUp

	systemUniverse
		when: #pause send: #stopSteppingSelector: to: self with: #tick;
		when: #start send: #startSteppingSelector: to: self with: #tick;
		setUp;
		query: {ScreenSize} do: [:size | size size: self extent]