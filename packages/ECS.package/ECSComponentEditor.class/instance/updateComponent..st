ui-building-updating
updateComponent: aComponent

	component ~~ aComponent or: [aComponent class fields size ~= (self submorphCount - 1)]
		ifTrue: [self buildFor: aComponent]
		ifFalse: [
			aComponent isNumber ifFalse: [
				aComponent class fields withIndexDo: [:name :index |
					(self submorphs at: index + 1) submorphs second externalValueUpdate: (aComponent perform: name)]]]