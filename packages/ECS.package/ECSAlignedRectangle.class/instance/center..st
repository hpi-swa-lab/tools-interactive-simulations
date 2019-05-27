as yet unclassified
center: aVector2D

	| extent |
	extent := self extent.
	origin := aVector2D - (extent / 2).
	corner := origin + extent