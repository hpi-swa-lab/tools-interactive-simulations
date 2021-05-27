as yet unclassified
updateElements: aList

	| index element components elementID |
	index := 1.

	aList do: [:ele |
		elementID := ele first asNumber.
		self elements addIfNotPresent: elementID.
		"self editorAt: index orAdd: self type."
		
		self elements size <= index
			ifTrue: [
				self flag: #ToDo. "remove self owner owner"
				components := self owner owner universe queryById: ele first asNumber.
				components := components first.
				self type == ECSEntityBlock
					ifTrue: [element := self type new.
						element title: (components
							detect: [:c | c class = Label]
							ifFound: [:labelComponent | labelComponent label asString, ' (Entity ', elementID, ')']
							ifNone: ['Entity ', elementID]).
						components do: [:component | 
							component isNumber not ifTrue: [element addComponent: component]].
						self addMorphBack: element]
					ifFalse: [components do: [:component | 
						component isNumber not ifTrue: [ | componentName |
							element := self type new.
							componentName := component class asString.
							(self components includes: componentName) not
								ifTrue: [self components add: componentName.
									element component: component.
									self addMorphBack: element]]]].
	
			self elements from: index to: self elements size do: [:m | self elements remove: m].
			index := index + 1]]