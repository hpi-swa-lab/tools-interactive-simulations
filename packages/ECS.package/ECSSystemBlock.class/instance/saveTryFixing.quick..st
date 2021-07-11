as yet unclassified
saveTryFixing: aFixBoolean quick: aQuickBoolean

	| class pipeline |

	class := [:b |
		(b
			class: self title
			super: System
			instVars: OrderedCollection new
			current: self id class)
			category: 'UserObjects'] sbStSave.

	pipeline := self class gamePipelineIn: self universe.
	
	(pipeline systems includes: self id) ifFalse: [pipeline systems add: (self createNewSystemClass: self title) new "pipeline register: ((self createNewSystemClass: self title) new).self halt."].
	""self halt.""
	
	^ true