as yet unclassified
generateIdIn: aUniverse

	| class instance pipeline |
	
	class := [:b |
		(b
			class: 'NewSystem', (ThreadSafeRandom next asString last: 5) 
			super: System
			instVars: OrderedCollection new
			current: nil)
			category: 'UserObjects'] sbStSave.
		
	[:b |
		(b method: #tick: in: class object with: {b name: 'aUniverse'} do: {})] sbStSave.
	
	instance := class object new.
	pipeline := self gamePipelineIn: aUniverse.
	(pipeline systems contains: [:system | system class = class object]) ifFalse: [pipeline register: instance].

	^ instance