converting
mutateWithParameters: anArray 
	
	| rotation scale |
	scale := anArray first.
	rotation := anArray second.
	^ (scale > 0 or: [rotation ~= 0])
		ifTrue: [
			scale := scale = 0 ifTrue: [1] ifFalse: [scale].
			ECSTileMapAsset of: bundle title at: identifier scale: scale rotation: rotation]
		ifFalse: [self]