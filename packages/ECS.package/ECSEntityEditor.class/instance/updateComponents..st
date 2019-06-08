as yet unclassified
updateComponents: aCollection

	aCollection doWithIndex: [:component :index |
		component isNumber ifFalse: [
			(self submorphAt: index orAdd: [ECSComponentEditor new]) updateComponent: component; parentTool: self].
	
	" delete components if we currently have more than we should display. (we start at size instead of size+1 because we skipped #id earlier) "
	self body submorphs from: aCollection size to: self body submorphCount do: [:m | self body removeMorph: m]]