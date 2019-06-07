as yet unclassified
updateComponents: aCollection

	aCollection doWithIndex: [:component :index |
			(self submorphAt: index orAdd: [ECSComponentEditor new]) updateComponent: component; parentTool: self].
	
		" delete components if we currently have more than we should display "
		self body submorphs from: aCollection size + 1 to: self body submorphCount do: [:m | self body removeMorph: m]