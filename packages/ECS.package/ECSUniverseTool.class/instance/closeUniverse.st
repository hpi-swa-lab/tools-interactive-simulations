as yet unclassified
closeUniverse

	| reallyClose |
	reallyClose := UIManager default confirm: 'Really close universe and all related tools? Nothing will be auto-saved'.
	
	reallyClose ifTrue: [
		ECSTool allInstances do: [:tool |
			tool universe = self universe ifTrue: [tool delete]].
		ECSSomeGameEditor allInstances do: [:editor |
			editor universe = self universe ifTrue: [editor delete]]]