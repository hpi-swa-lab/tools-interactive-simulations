initialize-release
setUp

	systemUniverse
		when: #pause send: #stopSteppingSelector: to: self with: #tick;
		when: #start send: #startSteppingSelector: to: self with: #tick;
		start;
		query: {ScreenSize} do: [:size | size size: self extent]