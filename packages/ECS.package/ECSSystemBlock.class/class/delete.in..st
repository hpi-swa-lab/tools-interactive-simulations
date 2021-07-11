as yet unclassified
delete: anId in: aUniverse

	| pipeline |

	pipeline := self gamePipelineIn: aUniverse.
	pipeline unregister: (pipeline systems detect: [:system | system = anId])