as yet unclassified
saveTryFixing: aFixBoolean quick: aQuickBoolean

	| class pipeline |

	class := [:b |
		(b
			class: self title
			super: System
			instVars: OrderedCollection new
			current: self id class)
			category: 'ECS-Block'] sbStSave.

	pipeline := self class gamePipelineIn: self universe.
	(pipeline systems contains: [:system | system class = self id class]) ifFalse: [pipeline register: self id].
	self methods first deleteBlock.
	self addMorphBack: (self id class >> #tick:) asSandblock.
	
	^ true