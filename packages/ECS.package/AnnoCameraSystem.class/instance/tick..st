as yet unclassified
tick: aUniverse

	aUniverse query: #(AnnoCamera DeltaTime Mouse) do: [:camera :deltaTime :mouse | | speed delta |
		speed := (deltaTime milliseconds * 1.5) rounded.
	
		aUniverse query: #(KeyEvent) do: [:keyEvent | | key |
			key := keyEvent key.
			(key = $W or: [key = Character arrowUp]) ifTrue: [camera position y: camera position y + speed].
			(key = $A or: [key = Character arrowLeft]) ifTrue: [camera position x: camera position x + speed].
			(key = $S or: [key = Character arrowDown]) ifTrue: [camera position y: camera position y - speed].
			(key = $D or: [key = Character arrowRight]) ifTrue: [camera position x: camera position x - speed]].
		
		mouse leftDown ifTrue: [
			delta := mouse positionDelta.
			camera position += delta]]