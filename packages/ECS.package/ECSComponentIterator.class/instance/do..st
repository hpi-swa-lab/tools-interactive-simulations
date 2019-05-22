as yet unclassified
do: aBlock

	| val |
	[val := self next. val notNil] whileTrue: [aBlock value: val]