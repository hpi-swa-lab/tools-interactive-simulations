*ECS-Plumbing
receiversSortedByCall
	"Sort receivers by code-related call order. Just a guess."
	
	| literals |
	literals := method literals select: [:lit | lit isSymbol].
	^ self receivers sorted: [:t1 :t2 |
		(literals indexOf: t1 method selector) <= (literals indexOf: t2 method selector)]