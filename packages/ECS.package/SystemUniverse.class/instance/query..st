api
query: aListOfComponentClasses
	" return a lazy iterator of components. this will always include #id, which will be added at the end if it's not already in the list "

	^ ECSComponentIterator new
		universe: self
		components: ((aListOfComponentClasses includes: #id)
			ifTrue: [aListOfComponentClasses]
			ifFalse: [aListOfComponentClasses copyWith: #id])