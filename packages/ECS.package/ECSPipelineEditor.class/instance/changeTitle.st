button-functionality
changeTitle

	| title |
	title := UIManager default request: 'Pipeline Title' initialAnswer: pipeline title.
	title ifEmpty: [^ self].
	pipeline title: title.