accessing
build

	self rootItems do: [:item |
		list addMorphBack: (self buildWidgetForItem: item parent: nil)]