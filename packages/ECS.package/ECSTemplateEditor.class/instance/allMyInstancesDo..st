ui-building-updating
allMyInstancesDo: aBlock

	self universe query: #(InstanceOfTemplate #id) do: [:templateInstance :entity |
		templateInstance template = template name ifTrue: [aBlock value: entity]]