accessing
buildDataFlowConnections

	| destinations sources |
	sources := OrderedCollection new.
	destinations := OrderedCollection new.
	
	ECSTool allSubInstances select: [:t | t world notNil] thenDo: [:tool |
		sources addAll: tool dataFlowSources.
		destinations addAll: tool dataFlowDestinations].
	
	dataFlowConnections := Array streamContents: [:stream |
		destinations do: [:dest |
			sources do: [:src |
				(dest matches: src) ifTrue: [stream nextPut: (ECSDataFlowConnection new source: src;  destination: dest)]]]].

	(dataFlowConnections collect: [:connection | connection destination]) asSet do: [:destination |
		destination when: #valuesChanged send: #changed to: self]