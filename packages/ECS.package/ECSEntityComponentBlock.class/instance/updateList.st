as yet unclassified
updateList

	| systemCollection |

	entities updateElements: (self universe query: #())  with: self universe.
	components updateElements: (self universe componentClasses) with: self universe.
	systemCollection := OrderedCollection new.
	self universe pipelines do: [:pipeline | 
		pipeline title = 'Game Loop' 
			ifTrue: [pipeline systems do: [:system | systemCollection add: system class]]].
	systems updateElements: systemCollection with: self universe.
