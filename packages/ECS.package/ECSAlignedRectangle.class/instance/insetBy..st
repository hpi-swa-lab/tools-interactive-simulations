as yet unclassified
insetBy: delta 
	
	(delta isRectangle)
		ifTrue: [^ ECSAlignedRectangle 
					origin: origin + delta origin 
					corner: corner - delta corner]
		ifFalse: [^ ECSAlignedRectangle 
					origin: origin + delta 
					corner: corner - delta]