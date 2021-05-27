as yet unclassified
editorAt: anIndex orAdd: anECSType

	| element components |
	self flag: #ToDo. "remove self owner owner"
	components := self owner owner universe queryById: anIndex.
	components := components first.

	self elements size < anIndex
		ifTrue: [anECSType == ECSEntityBlock
			ifTrue: [element := anECSType new.
				element title: (components
					detect: [:c | c class = Label]
					ifFound: [:labelComponent | labelComponent label asString, ' (Entity ', anIndex asString, ')']
					ifNone: ['Entity ', anIndex asString]).
				self addMorphBack: element.]
			ifFalse: [components do: [:component | 
				component isNumber not ifTrue: [
					element := anECSType new.
					element component: component.
					self addMorphBack: element.]]]]
		ifFalse: [self elements at: anIndex]
	