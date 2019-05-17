as yet unclassified
open

	| browser |
	browser := self new.
	browser openInWindowLabeled: 'Asset Browser'.
	browser layoutChanged.
	^ browser