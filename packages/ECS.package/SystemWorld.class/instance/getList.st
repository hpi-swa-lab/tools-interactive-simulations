as yet unclassified
getList

	^ (self systems, self resources, self entities) collect: [:item | item asString -> item]