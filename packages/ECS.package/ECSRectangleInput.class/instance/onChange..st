as yet unclassified
onChange: aBlock

	origin onChange: [:valOrigin | aBlock value: (valOrigin extent: extent value)].
	extent onChange: [:valExtent | aBlock value: (origin value extent: valExtent)]