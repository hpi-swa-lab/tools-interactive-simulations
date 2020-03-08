initialization
initialize

	super initialize.
	self
		 addMorphBack: (x := ECSNumberInput new
			 contents: '0';
			 when: #editStarted send: #triggerEvent: to: self with: #editStarted;
			 when: #editStopped send: #triggerEvent: to: self with: #editStopped);
		 addMorphBack: (ECSLabel new contents: ' , ');
		 addMorphBack: (y := ECSNumberInput new
			 contents: '0';
			 when: #editStopped send: #triggerEvent: to: self with: #editStopped;
			 when: #editStarted send: #triggerEvent: to: self with: #editStarted);
		 hResizing: #shrinkWrap