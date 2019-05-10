instance creation
example

	^ SystemWorldMorph new extent: 500 @ 500; position: 0 @ 0; addMorph: ((ToolBuilder build: Browser new) position: 0 @ 0); openInWorld