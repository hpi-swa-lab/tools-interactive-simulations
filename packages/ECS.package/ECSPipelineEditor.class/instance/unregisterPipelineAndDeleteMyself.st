as yet unclassified
unregisterPipelineAndDeleteMyself

	(UIManager default confirm: 'Do you really want to delete the pipeline ', self pipeline title, '?')
		ifFalse: [^ self].
	self universe unregister: pipeline.
	self delete