as yet unclassified
openComponent: aClass

	| editor |
	editor := ECSComponentStructureEditor openFor: self universe.
	editor owner extent: (500 @ 400) * (TextStyle defaultFont height / 16) rounded.
	editor loadComponent: aClass