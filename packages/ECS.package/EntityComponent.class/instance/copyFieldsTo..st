as yet unclassified
copyFieldsTo: aComponent

	self class fieldsDo: [:name :mutatorName |
		aComponent perform: mutatorName with: (self perform: name) copy]