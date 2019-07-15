component-updating
updateComponentClass

	| component className storageType attributes category previousAttributes |
	[
		className := self validatedClassName.
		storageType := self validatedStorageType.
		attributes := self validatedAttributes.
	] on: ECSValidationError do: [:error | ^ UIManager default inform: error messageText].
	
	"class name"
	className ~= lastComponentName ifTrue: [
		(UIManager default chooseFrom: {'create new'. 'rename ', lastComponentName, ' to ', className}) = 2
			ifTrue: [(Smalltalk at: lastComponentName) rename: className]].
	
	category := (Smalltalk classNamed: className) 
		ifNotNil: [:class | class category] 
		ifNil: [self universe class category].
	
	previousAttributes := (Smalltalk classNamed: className)
		ifNotNil: [:class | class instVarNames]
		ifNil: [attributes collect: #first].
	
	component := EntityComponent 
		subclass: className asSymbol
		instanceVariableNames: ((attributes collect: #first) collect: #asSymbol)
		classVariableNames: ''
		poolDictionaries: ''
		category: category.
	
	" initialize new fields "
	((attributes collect: #first) difference: previousAttributes) do: [:attr |
		component allInstancesDo: [:inst | inst instVarNamed: attr put: (attributes detect: [:pair | pair first = attr]) second ecsDefault]].
	
	"storage type"
	component class compile: ('storage\\	^ {1}' withCRs format: {storageType asString}).
	component class compile: ('fields\\	^ {1}' withCRs format: {((attributes collect: #first) collect: #asSymbol) storeString}).
	component class compile: ('mutatorFields\\	^ {1}' withCRs format: {(((attributes collect: #first) collect: #asSymbol) collect: #asMutator) storeString}).
	
	"attributes"
	
	"  delete all messages"
	component selectorsDo: [:each | component removeSelector: each].
	
	" initialize "
	attributes ifNotEmpty: [
		component compile: (String streamContents: [:stream |
			stream nextPutAll: ('initialize\\	super initialize.\\') withCRs.
				attributes
					do: [:each | stream tab; nextPutAll: each first; nextPutAll: ' := '. each second ecsDefault storeOn: stream. stream]
					separatedBy: [stream nextPut: $.; cr]])].
	
	"  create new messages"
	attributes do: [:each | | name class pragma |
		name := each first.
		class := each second.
		pragma := Pragma keyword: #ecsType: arguments: {class name}.
		
		"getter"
		component compile: ('{1}\\	{2}\	^ {1}' withCRs format: {name. pragma}).
		"setter"
		component compile: 
			('{1}: anObject\\	{2}\	{1} := anObject' 
						withCRs format: {name. pragma})].
	
	lastComponentName := className