as yet unclassified
updateList

	list labels: ((EntityComponent subclasses select: [:subclass | universe components keys includes: subclass name]) collect: #name)