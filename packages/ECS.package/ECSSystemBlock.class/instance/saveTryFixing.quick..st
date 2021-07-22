artefact protocol
saveTryFixing: aFixBoolean quick: aQuickBoolean

	| class pipeline categoryName |

	categoryName := self universe class asString.
	categoryName := 'ECS-Game-', ((categoryName endsWith: 'Universe')
			ifTrue: [categoryName allButLast: 'Universe' size]
			ifFalse: [categoryName]).
	class := [:b |
		(b
			class: self title
			super: System
			instVars: OrderedCollection new
			current: self id class)
			category: categoryName] sbStSave.

	pipeline := self class gamePipelineIn: self universe.
	(pipeline systems contains: [:system | system class = self id class]) ifFalse: [pipeline register: self id].
	self methods first deleteBlock.
	self addMorphBack: (self id class >> #tick:) asSandblock.
	
	^ true