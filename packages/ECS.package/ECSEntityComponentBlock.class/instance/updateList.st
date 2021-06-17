as yet unclassified
updateList

	| systemCollection |

	entities updateElements: self entityIds.
	components updateElements: (self universe componentClasses).
	systemCollection := (ECSSystemBlock gamePipelineIn: self universe) systems collect: #class.
	systems updateElements: systemCollection.
