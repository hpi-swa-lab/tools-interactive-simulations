updating
updateList

	list labels: ((EntityComponent subclasses select: [:subclass | subclass category = universe class category]) collect: #name)