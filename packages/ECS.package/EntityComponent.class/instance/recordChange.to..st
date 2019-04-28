as yet unclassified
recordChange: aValue to: aPropertyName

	(records at: aPropertyName ifAbsentPut: [LinkedList new]) addFirst: (RecordLink new time: Time millisecondClockValue; data: aValue)