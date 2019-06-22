dropping/grabbing
wantsDroppedMorph: aMorph event: evt

	^ aMorph class = ECSSortableItemWrapper and: [aMorph list = self]