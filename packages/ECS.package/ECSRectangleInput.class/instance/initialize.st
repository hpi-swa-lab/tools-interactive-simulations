initialization
initialize

	super initialize.
	self
		 addMorphBack: (origin := ECSPointInput new
			 when: #editStarted send: #triggerEvent: to: self with: #editStarted;
			 when: #editStopped send: #triggerEvent: to: self with: #editStopped;
			 yourself);
		 addMorphBack: (extent := ECSPointInput new
			 when: #editStarted send: #triggerEvent: to: self with: #editStarted;
			 when: #editStopped send: #triggerEvent: to: self with: #editStopped;
			 yourself);
		 hResizing: #shrinkWrap