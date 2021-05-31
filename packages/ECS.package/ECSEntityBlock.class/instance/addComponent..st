as yet unclassified
addComponent: aComponent

	| componentBlock value |

	componentBlock := ECSComponentBlock new component: aComponent.
	self addMorphBack: componentBlock toggleCollapsed.
	aComponent class fields do: [:field |
		value := aComponent perform: field.
		(componentBlock getField: field) 
			fieldValue: value asString; 
			showFieldValue]