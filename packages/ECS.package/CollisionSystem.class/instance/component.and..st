as yet unclassified
component: aVector and: aDirectionVector

	| alpha theta |
	alpha := aDirectionVector y arcTan: aVector first.
	theta := aVector y arcTan: aVector x.
	^ aVector r * (theta - alpha) cos.