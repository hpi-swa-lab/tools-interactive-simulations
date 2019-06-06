ui
updateIcon

	pauseIcon changeIconName: (self universe isPaused ifTrue: [#iconPlay] ifFalse: [#iconPause])