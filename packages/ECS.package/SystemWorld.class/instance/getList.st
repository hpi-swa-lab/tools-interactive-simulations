as yet unclassified
getList

	
	| entitiesList |
	entitiesList := (1 to: maxEntityIndex)
		collect: [:index |
			EntityExplorerWrapper new components: ((components values collect: [:list | list at: index]) select: #notNil)]
		thenSelect: [:wrapper | wrapper components size > 1].
	
	^ (self systems, self resources, entitiesList) collect: [:item | item asString -> item]