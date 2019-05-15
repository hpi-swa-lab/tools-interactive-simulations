as yet unclassified
initialize

	super initialize.
	
	self changeTableLayout.
	self listDirection: #leftToRight.
	self wrapDirection: #leftToRight.
	self layoutInset: 8.
	self cellInset: 8.
	self color: Color white.
	
	self class assetCache valuesDo: [:asset | self addForm: asset]
	"(FileDirectory default / 'assets' / 'particle') fileEntries do: [:file | self addForm: ..]"