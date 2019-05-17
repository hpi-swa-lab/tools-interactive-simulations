as yet unclassified
systemOrderChanged

	self universe systems do: [:each | self removeSystemFromUI: each].
	self universe systems do: [:each | self addSystemToUI: each]