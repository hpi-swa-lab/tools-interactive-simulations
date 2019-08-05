as yet unclassified
removeWatch: id

	| watchIndex text watchedExpressionAttribute |
	watchedExpressionAttribute := self text runs findFirst: [:attributes | attributes 
		anySatisfy: [:each | (each isKindOf: ECSWatchedExpressionAttribute) and: [each id = id]]].
	
	self text removeAttribute: watchedExpressionAttribute.
	
	watchIndex := self text runs findFirst: [:attributes | attributes 
		anySatisfy: [:each | (each isKindOf: ECSTextAnchor) and: [each id = id]]].
	text := self text 
		copyReplaceFrom: watchIndex - ((self text at: watchIndex - 1 ifAbsent: [$?]) = $") asBit
		to: watchIndex + ((self text at: watchIndex + 1 ifAbsent: [$?]) = $") asBit
		with: ''.
	self setText: text.
	self hasUnacceptedEdits: true