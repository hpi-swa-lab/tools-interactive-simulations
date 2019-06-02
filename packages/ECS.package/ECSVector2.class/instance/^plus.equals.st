as yet unclassified
+= arg 
	
	arg isECSVector2 ifTrue: [
		x :=x + arg x.
		y := y + arg y.
		^ self].
	self += arg asECSVector2