as yet unclassified
formFor: aRectangle

	^ form copy: (aRectangle origin * (aRectangle extent + (1 , 1)) extent: aRectangle extent)