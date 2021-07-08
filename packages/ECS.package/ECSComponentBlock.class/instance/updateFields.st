as yet unclassified
updateFields

	| value |

	self isInstance ifTrue: [
		self id fields do: [:field |
			value := self component perform: field.
			(self getField: field)
				fieldValueContents: value;
				showFieldValue;
				hideFieldType;
				fieldValueOnChange: [:newValue | self component perform: field asSimpleSetter with: newValue]]]