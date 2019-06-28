as yet unclassified
compile: aCue watcherIntervals: aCollection ifFail: failBlock 

	| newCode source |
	source := aCue sourceStream contents.
	newCode := self transformCode: source 
		watcherIntervals: aCollection 
		class: aCue getClass
		selector: (source lines first findSelector).
	
	^ super
		compile: (CompilationCue
			source: newCode
			class: aCue getClass
			environment: aCue environment
			requestor: aCue requestor)
		ifFail: failBlock