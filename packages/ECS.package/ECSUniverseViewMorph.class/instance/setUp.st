initialize-release
setUp

	universe
		when: #pause send: #stopSteppingSelector: to: self with: #tickUniverse;
		when: #start send: #startSteppingSelector: to: self with: #tickUniverse;
		when: #postTick send: #changed to: self;
		start;
		query: #(UniverseView) do: [:size | size size: self extent]