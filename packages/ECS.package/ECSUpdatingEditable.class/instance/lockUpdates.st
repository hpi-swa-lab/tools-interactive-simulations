as yet unclassified
lockUpdates

	currentValueDisplay := ECSLabelWithBackground new
		 color: Color black;
		 changeTableLayout;
		 layoutInset: 4;
		 contents: self value asString;
		 lock;
		 yourself.
	currentValueDisplay openInWorld: self world.
	currentValueDisplay position: self positionInWorld + (self width @ 0)