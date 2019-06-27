as yet unclassified
compile: aCue ifFail: failBlock 

	| newCode source |
	source := aCue sourceStream contents asString.
	newCode := self transformCode: source class: aCue getClass selector: (source lines first findSelector).
	
	^ super compile: (CompilationCue
						source: newCode
						class: aCue getClass
						environment: aCue environment
						requestor: aCue requestor)
			ifFail: failBlock