as yet unclassified
newWith: anId

	| block |

	block := (anId >> #tick:) asSandblock.
	^ self 
		new selector: #tick: arguments: block arguments class: anId; 
		body: block body