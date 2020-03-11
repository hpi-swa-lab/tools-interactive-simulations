initialize-release
initialize

	super initialize.
	
	pipelines := OrderedCollection new.
	templates := OrderedCollection new.
	views := OrderedCollection new.
	stepTime := 0.
	pausedAfterError := false.
	autoPersist := true.
	running := false.
	
	state := ECSSnapshot new
		when: #componentClassAdded send: #triggerEvent: to: self with: #componentClassAdded;
		when: #queryReport send: #queryReport:for: to: self;
		yourself