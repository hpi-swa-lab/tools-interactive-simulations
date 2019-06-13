as yet unclassified
hasChildren: aBoolean

	hasChildren := aBoolean.
	hasChildren ifTrue: [
		self addMorph: (ECSButton new
			icon: ECSIcon iconChevron_right;
			small;
			when: #clicked send: #toggleExpanded to: self)]