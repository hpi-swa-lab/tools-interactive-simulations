initialize-release
setUp

	systemUniverse
		when: #pause send: #stopSteppingSelector: to: self with: #tickUniverse;
		when: #start send: #startSteppingSelector: to: self with: #tickUniverse;
		when: #tick send: #postTick to: self;
		start;
		query: {ScreenSize} do: [:size | size size: self extent]