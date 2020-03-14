events
updateModifiersWith: anEvent for: aViewId

	self query: #(UniverseView id) filter: [:view :id | id = aViewId] do: [:view :id |
		view shiftPressed: anEvent shiftPressed.
		view commandKeyPressed: anEvent commandKeyPressed.
		view controlKeyPressed: anEvent controlKeyPressed]