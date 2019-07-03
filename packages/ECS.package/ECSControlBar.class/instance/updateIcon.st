ui
updateIcon

	pauseIcon changeIconName: (self universe isPaused ifTrue: [#iconPlay] ifFalse: [#iconPause]).
	(pauseIcon ownerThatIsA: ECSButton) color: (self universe isPaused ifTrue: [Color red] ifFalse: [Color fromString: 'bada55']).