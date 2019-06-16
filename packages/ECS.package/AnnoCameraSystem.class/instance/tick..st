as yet unclassified
tick: aUniverse

	aUniverse query: #(AnnoCamera DeltaTime Mouse) do: [:camera :deltaTime :mouse | | speed delta |
		speed := (deltaTime milliseconds * 1.5) rounded.
		camera justMoved: false.
	
		aUniverse query: #(KeyEvent) do: [:keyEvent | | key |
			key := keyEvent key.
			(key = $W or: [key = Character arrowUp]) ifTrue: [camera 
				position y: camera position y + speed. camera justMoved: true].
			(key = $A or: [key = Character arrowLeft]) ifTrue: [camera 
				position x: camera position x + speed. camera justMoved: true].
			(key = $S or: [key = Character arrowDown]) ifTrue: [camera 
				position y: camera position y - speed. camera justMoved: true].
			(key = $D or: [key = Character arrowRight]) ifTrue: [camera 
				position x: camera position x - speed. camera justMoved: true]].
		
		mouse leftDown ifTrue: [
			delta := mouse positionDelta.
			delta ~= (0,0) ifTrue: [
				camera position += delta. camera justMoved: true]]]