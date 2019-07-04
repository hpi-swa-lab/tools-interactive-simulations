query-filtering
dataFlowSources
	
	^ {ECSDataFlowSource new components: self componentsInQuery; morph: self}