as yet unclassified
bitmapBlock

	| storages maxEntities maxComponents filledForm destForm rect components |
	maxEntities := 16rFFFF.
	maxComponents := 3.
	filledForm := [:v | Form 
		extent: maxEntities@1 
		depth: 1 
		fromArray: (Array new: 1 withAll: (v > 0 ifTrue: [16rFFFFFFFF] ifFalse: [0]))
		offset: 0].
	
	storages := Array new: maxComponents.
	1 to: maxComponents do: [:i | storages at: i put: (filledForm value: 1)].
	
	"storages first pixelValueAt: 1@0 put: 0."
	
	rect := 0@0 extent: maxEntities@1.
	
	
	maxEntities := 16rFFFF.
	maxComponents := 3.
	components := (Array new: maxComponents).
	
	1 to: maxComponents do: [:i | | array |
		array := Array new: maxEntities.
		1 to: maxEntities do: [:j |
			array at: j put: (ECSMyComponent new alive: true)].
		components at: i put: array].
	
	
	
	^ [ | sum |
		destForm := filledForm value: 1.
		1 to: maxComponents do: [:i | destForm copy: rect from: (storages at: i) to: 1@1 rule: Form and].
		
		sum :=  0.
		1 to: maxEntities do: [:i | | val |
			val := 1.destForm primPixelValueAtX: i - 1 y: 0.
			val = 1 ifTrue: [
				sum := sum + 5.
				"1 to: maxComponents do: [:j | | entity |
					entity := (components at: j) at: i.
					sum := sum + entity val]"]]
	]