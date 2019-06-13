as yet unclassified
collapseFrom: aListMorph

	
	self children ifNotNil: [:l | l do: [:m |
		aListMorph removeMorph: m.
		m collapseFrom: aListMorph]].
	expanded := false.
	self updateIcon