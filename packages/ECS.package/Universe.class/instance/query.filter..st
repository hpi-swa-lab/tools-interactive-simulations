api
query: aListOfComponentClasses filter: aBlock
	" return a lazy iterator of components. this will always include #id, which will be added at the end if it's not already in the list "

	^ ECSFilterIterator new on: (self query: aListOfComponentClasses) filter: aBlock