as yet unclassified
arrayBlock

	| maxEntities maxComponents components |
	maxEntities := 16rFFFF.
	maxComponents := 3.
	components := (Array new: maxComponents).
	
	1 to: maxComponents do: [:i | | array |
		array := Array new: maxEntities.
		1 to: maxEntities do: [:j |
			array at: j put: (ECSMyComponent new alive: true)].
		components at: i put: array].
	
	^ [ | sum |
		sum :=  0.
		1 to: maxComponents do: [:i | | entities |
			entities := components at: i.
			1 to: maxEntities do: [:j | | entity |
				entity := (entities at: j).
				entity alive ifTrue: [sum := sum + entity val]]]
	]