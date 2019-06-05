api
onceRunPipelineNamed: aString

	self pipelines detect: [:pipeline | pipeline title = aString] ifFound: [:pipeline | pipeline tick: self] ifNone: []