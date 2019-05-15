as yet unclassified
initialize

	super initialize.
	
	self addMorphBack: (ECSList new itemCount: 50 itemHeight: 32 builder: [:index | ECSLabel new contents: 'Item ', index asString]).
	self addMorphBack: (ECSToolResizer new target: self)