button-functionality
closeUniverse

	| reallyClose |
	reallyClose := UIManager default confirm: 'Really close universe and all related tools? Nothing will be auto-saved'.
	
	reallyClose ifTrue: [
		ECSTool allSubInstances do: [:tool |
			tool universe = self universe ifTrue: [(tool ownerThatIsA: SystemWindow) ifNotNilDo: [:window | window delete]]].
		ECSEditor allInstances do: [:editor |
			editor universe = self universe ifTrue: [editor delete]]]