as yet unclassified
next

	| v |
	^ [
		v := baseIterator next.
		v ifNil: [^ nil].
		(filterBlock valueWithArguments: v allButLast) ifTrue: [^ v]
	] repeat