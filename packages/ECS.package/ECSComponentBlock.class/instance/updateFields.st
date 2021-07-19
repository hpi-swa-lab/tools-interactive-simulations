updating
updateFields

	| value c |

	self isInstance ifTrue: [
		c := self universe getSingle: self id name of: self entityId.
		c ifNotNil: [
			self id fields do: [:field |
				value := c perform: field.
				(self getField: field)
					fieldValueContents: value;
					showFieldValue;
					hideFieldType;
					fieldValueOnChange: [:newValue | self universe set: field in: self id name asSymbol of: self entityId to: newValue persist: true]]]]