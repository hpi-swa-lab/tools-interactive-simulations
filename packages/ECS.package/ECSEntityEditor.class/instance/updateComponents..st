ui-building-updating
updateComponents: aCollection

	| i |
	i := 1.
	aCollection do: [:component |
		component isNumber ifFalse: [
			(self submorphAt: i orAdd: [ECSComponentEditor new
					when: #changedValue
					send: #update:ofComponent:with:
					to: self]) updateComponent: component; parentTool: self.
			i := i + 1]].
	
	" delete components if we currently have more than we should display. (we start at size instead of size+1 because we skipped #id earlier) "
	self body submorphs from: (aCollection size max: 1) to: self body submorphCount do: [:m | self body removeMorph: m]