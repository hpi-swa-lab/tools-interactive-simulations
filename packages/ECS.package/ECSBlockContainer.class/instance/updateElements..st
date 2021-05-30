as yet unclassified
updateElements: aList

	| index element components |
	index := 1.
	
	aList do: [:ele |
		self elements addIfNotPresent: ele first asNumber.
		"self editorAt: index orAdd: self type."
		index := index + 1].
	self elements do: [:el | 
		components := self owner owner universe queryById: el.
		components := components first.
		self type == ECSEntityBlock
		ifTrue: [element := self type new.
			element title: (components
				detect: [:c | c class = Label]
				ifFound: [:labelComponent | labelComponent label asString, ' (Entity ', el asString, ')']
				ifNone: ['Entity ', el asString]).
			components do: [:component | 
				component isNumber not ifTrue: [
					(element addComponent: component) ]].
			self addMorphBack: element.]
		ifFalse: [components do: [:component | 
			component isNumber not ifTrue: [
				element := self type new.
				element component: component.
				self addMorphBack: element.]]].].
	
	self elements from: index to: self elements size do: [:m | self elements remove: m].