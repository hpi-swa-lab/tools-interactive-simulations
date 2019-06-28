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
	method propertyValueAt: #ecsWatcherIntervals put: watcherIntervals asArray.
	selector := methodAndNode selector.
	
	logSource ifTrue: [
		self
			logMethodSource: text asString asText "remove all attributes from the text"
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