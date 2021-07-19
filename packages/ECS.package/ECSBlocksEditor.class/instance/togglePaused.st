button-functionality
togglePaused

	self universe isPaused 
		ifTrue: [
			self universe start. 
			playIcon changeIconName: #iconPause] 
		ifFalse: [
			self universe pause. 
			playIcon changeIconName: #iconPlay]