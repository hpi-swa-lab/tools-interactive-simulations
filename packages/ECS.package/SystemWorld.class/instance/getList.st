as yet unclassified
getList

	^ (self systems, self resources) collect: [:item | item asString -> item]