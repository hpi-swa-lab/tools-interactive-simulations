as yet unclassified
updateFields

	| value |

	self isInstance ifTrue: [
		self id class fields do: [:field |
			value := self id perform: field.
			(self getField: field) 
				fieldValue: value asString;
				showFieldValue;
				hideFieldType]]