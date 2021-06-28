as yet unclassified
updateFields

	| value string |

	self isInstance ifTrue: [
		self id class fields do: [:field |
			value := self id perform: field.
			string := value isPoint
				ifTrue: ['{1}{2}{3}' format: {value x printShowingMaxDecimalPlaces: 4. '@'. value y printShowingMaxDecimalPlaces: 4}]
				ifFalse: [value asString].
			(self getField: field)
				fieldValue: string;
				showFieldValue;
				hideFieldType]]