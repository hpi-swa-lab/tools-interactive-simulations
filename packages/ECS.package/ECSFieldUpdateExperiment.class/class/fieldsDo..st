as yet unclassified
fieldsDo: aBlock

	| f m |
	f := self fields.
	m := self mutatingFields.
	1 to: f size do: [:i |
		aBlock value: (f at: i) value: (m at: i)]