accessing
queriesInSystemCode: aSystem

	| componentAccesses method visitor |
	method := aSystem class >> #tick:.
	visitor := ECSParseNodeVisitor new.
	method methodNode accept: visitor.
	componentAccesses := visitor accesses.
	
	^ (componentAccesses groupBy: [:c | c sourceRange]) values collect: [:components | components collect: #componentClass]