as yet unclassified
removeWatch: anECSWatchedExpressionAttribute

	| endIndex startIndex id watchIndex |
	id := anECSWatchedExpressionAttribute id.
	startIndex := self text runs findFirst: [:attributes | attributes includes: anECSWatchedExpressionAttribute].
	endIndex := self text runs findLast: [:attributes | attributes includes: anECSWatchedExpressionAttribute] startingAt: startIndex.
	
	self text removeAttribute: anECSWatchedExpressionAttribute.
	
	watchIndex := self text runs findFirst: [:attributes | attributes 
		anySatisfy: [:each | (each isKindOf: ECSTextAnchor) and: [each id = id]]].
	self text replaceFrom: watchIndex to: watchIndex with: ''.
	
	self textEdited: self text.
	self hasUnacceptedEdits: true