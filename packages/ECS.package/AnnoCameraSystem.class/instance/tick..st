as yet unclassified
tick: aUniverse

	aUniverse query: #(UniverseView id) do: [:view :entity |
		(aUniverse getSingle: #AnnoCamera of: entity) ifNil: [
			aUniverse attach: #AnnoCamera to: entity]].
	
	aUniverse query: #(DeltaTime) do: [:deltaTime | | speed delta |
		aUniverse query: #(AnnoCamera UniverseView id) do: [:camera :view :viewId |
			speed := (deltaTime milliseconds * 1.5) rounded.
			camera justMoved: false.
			
			aUniverse query: #(KeyEvent) filter: [:keyEvent | keyEvent view = viewId] do: [:keyEvent | | key |
				key := keyEvent key.
				(key = $W or: [key = Character arrowUp]) ifTrue: [camera 
					position y: camera position y + speed. camera justMoved: true].
				(key = $A or: [key = Character arrowLeft]) ifTrue: [camera 
					position x: camera position x + speed. camera justMoved: true].
				(key = $S or: [key = Character arrowDown]) ifTrue: [camera 
					position y: camera position y - speed. camera justMoved: true].
				(key = $D or: [key = Character arrowRight]) ifTrue: [camera 
					position x: camera position x - speed. camera justMoved: true]].
			
			view leftDown ifTrue: [
				delta := view mousePositionDelta.
				delta ~= (0,0) ifTrue: [
					camera position += delta. camera justMoved: true]]]]