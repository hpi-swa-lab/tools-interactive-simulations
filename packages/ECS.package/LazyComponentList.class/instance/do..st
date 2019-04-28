as yet unclassified
do: aBlock

	| components |
	components := Array new: signature size.
	entities doWithIndex: [:entity :index |
		self match: signature to: entity into: components do: aBlock]