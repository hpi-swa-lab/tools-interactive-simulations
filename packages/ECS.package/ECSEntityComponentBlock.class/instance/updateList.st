as yet unclassified
updateList

	| systems |

	entities updateElements: (self universe query: #())  with: self universe.
	components updateElements: (self universe componentClasses) with: self universe.
	systems := OrderedCollection new.
	self universe pipelines do: [:pipeline | pipeline title = 'Game Loop' ifTrue: [pipeline systems do: [:system | systems add: system class]]].
	systems updateElements: systems with: self universe.
