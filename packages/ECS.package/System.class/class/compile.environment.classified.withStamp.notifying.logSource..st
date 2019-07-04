as yet unclassified
compile: text environment: anEnvironment classified: category withStamp: changeStamp notifying: requestor logSource: logSource

	"Largely based on super"
	| methodAndNode context methodNode selector watcherIntervals method |
	context := CompilationCue
		source: text
		class: self
		environment: anEnvironment
		requestor: requestor.
		
	watcherIntervals := self extractWatcherIntervals: text.
	
	methodNode := self newCompiler compile: context watcherIntervals: watcherIntervals ifFail: [^ nil].
	methodAndNode := CompiledMethodWithNode 
		generateMethodFromNode: methodNode 
		trailer: (self defaultMethodTrailerIfLogSource: logSource).
	
	method := methodAndNode method.
	method propertyValueAt: #ecsWatcherIntervals put: (Dictionary newFrom: (watcherIntervals associations 
		withIndexCollect: [:each :index | each key - ((index - 1) * 3) -> each value])).
	selector := methodAndNode selector.
	
	ECSLogger removeBuffersFor: self method: method selector exceptThese: watcherIntervals values.
	
	logSource ifTrue: [ | code |
		"remove all attributes and String 1s from the text"
		code := text asString copyReplaceAll: '"', (String value: 1), '"' with: ''.
		self
			logMethodSource: code asText
			forMethodWithNode: methodAndNode 
			inCategory: category
			withStamp: changeStamp
			notifying: requestor.
		RecentMessages default
			recordSelector: selector
			forClass: methodAndNode method methodClass
			inEnvironment: anEnvironment ].
	self
		addAndClassifySelector: selector
		withMethod: method
		inProtocol: category
		notifying: requestor.
	self instanceSide
		noteCompilationOf: selector
		meta: self isClassSide.
	^selector