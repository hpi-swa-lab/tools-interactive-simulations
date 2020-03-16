query-filtering
componentsInQuery

	| doIt visitor |
	doIt := Parser new parse: self queryString class: nil class noPattern: true notifying: nil ifFail: [].
	visitor := ECSFindQueryVisitor new.
	doIt accept: visitor.
	^ visitor result ifNil: [#()]