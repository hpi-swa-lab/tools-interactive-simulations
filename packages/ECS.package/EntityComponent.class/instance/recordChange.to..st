as yet unclassified
recordChange: aValue to: aPropertyName

	" enable to track changes to this field. mutable accesses on the field's object itself are not tracked "
	"(records at: aPropertyName ifAbsentPut: [LinkedList new]) addFirst: (RecordLink new time: Time millisecondClockValue; data: aValue)"