as yet unclassified
updateFields

	| value string |

	self isInstance ifTrue: [
		self id fields do: [:field |
			value := self component perform: field.
			string := value isPoint
				ifTrue: ['{1}{2}{3}' format: {value x printShowingMaxDecimalPlaces: 4. '@'. value y printShowingMaxDecimalPlaces: 4}]
				ifFalse: [value asString].
			string := value class = ECSAlignedRectangle
				ifTrue: ['{1}{2}{3}{4}{5}{6}{7}' format: {
					value origin x printShowingMaxDecimalPlaces: 0. ' , '.  value origin y printShowingMaxDecimalPlaces: 0. ' extent: '. 
					value corner x printShowingMaxDecimalPlaces: 0. ' , '. value corner y printShowingMaxDecimalPlaces: 0}]
				ifFalse: [value asString].
			(self getField: field)
				fieldValueContents: value;
				showFieldValue;
				hideFieldType;
				fieldValueOnChange: [:newValue | self id perform: field asSimpleSetter with: newValue]]]