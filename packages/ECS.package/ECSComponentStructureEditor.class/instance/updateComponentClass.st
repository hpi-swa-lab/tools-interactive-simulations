as yet unclassified
updateComponentClass

	| component className storageType attributes |
	[
		className := self validatedClassName.
		storageType := self validatedStorageType.
		attributes := self validatedAttributes.
	] on: ECSValidationError do: [:error | ^ UIManager default inform: error messageText].
	
	"class name"
	className ~= lastComponentName ifTrue: [
		(UIManager default chooseFrom: {'create new'. 'rename ', lastComponentName, ' to ', className}) = 2
			ifTrue: [(Smalltalk at: lastComponentName) rename: className]].
	
	component := EntityComponent 
		subclass: className asSymbol
		instanceVariableNames: (attributes collect: #first)
		classVariableNames: ''
		poolDictionaries: ''
		category: 'ECS2-Custom'.
	
	"storage type"
	component class compile: ('storage\\\\	^ {1}' withCRs format: storageType name asString).
	
	"attributes"
	
	"  delete all messages"
	component selectorsDo: [:each | component removeSelector: each].
	
	"  create new messages"
	attributes do: [:each | | name class pragma |
		name := each first.
		class := each second.
		pragma := Pragma keyword: #ecs:type: arguments: {'component attribute'. class name}.
		
		"getter"
		component compile: ('{1}\\\\	{2}\\	^ {1}' withCRs format: {name pragma}).
		"setter"
		component compile: 
			('{1}: anObject\\\\	{2}\\	{1} := anObject\\	self recordChange: anObject to: #{1}' 
						withCRs format: {name pragma})].
	lastComponentName := className