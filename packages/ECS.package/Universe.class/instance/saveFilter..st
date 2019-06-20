accessing
saveFilter: aBlock
	" return an entity iterator from this block that has #id as its first element.
	e.g.  [:universe | universe query: #(id. Label)] to only save entities that have a label component. all componets of those entities will be saved "

	saveFilter := aBlock