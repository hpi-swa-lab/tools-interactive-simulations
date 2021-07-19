adding/deleting
duplicateEntity

	<action>
	| newEntityId entityComponents |

	entityComponents := (self universe allComponentsOf: self id) select: [:c | c isNumber not].
	newEntityId := self universe spawnNewPersistedWith: (entityComponents collect: [:c | c class name asSymbol]).
	entityComponents with: ((self universe allComponentsOf: newEntityId) select: [:c | c isNumber not]) do: [:old :new | old copyFieldsTo: new].
	self parentSandblock initializeElements.