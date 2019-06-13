as yet unclassified
bench

	| storages maxEntities maxComponents filledForm destForm rect |
	maxEntities := 16rFFFF.
	maxComponents := 100.
	filledForm := [:v | Form 
		extent: maxEntities@1 
		depth: 1 
		fromArray: (Array new: 1 withAll: (v > 0 ifTrue: [16rFFFFFFFF] ifFalse: [0]))
		offset: 0].
	
	storages := Array new: maxComponents.
	1 to: maxComponents do: [:i | storages at: i put: (filledForm value: 1)].
	
	storages first pixelValueAt: 1@0 put: 0.
	
	rect := 0@0 extent: maxEntities@1.
	
	^ [ | result |
		destForm := filledForm value: 1.
		1 to: maxComponents do: [:i | destForm copy: rect from: (storages at: i) to: 1@1 rule: Form and].
		
		result := OrderedCollection new.
		1 to: maxComponents do: [:i | | val | 
			val := destForm pixelValueAt: (i - 1)@0.
			val = 1 ifTrue: [result add: i]]
	]