accessing
componentsInSystemCode: aSystem

	| method visitor |
	method := aSystem class >> #tick:.
	visitor := ECSParseNodeVisitor new.
	method methodNode accept: visitor.
	^ (visitor accesses collect: #componentClass) asSet asArray