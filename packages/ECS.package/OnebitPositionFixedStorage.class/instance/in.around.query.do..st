as yet unclassified
in: aUniverse around: aPoint query: aComponentList do: aBlock

	-1 to: 1 do: [:x |
		-1 to: 1 do: [:y |
			self in: aUniverse at: aPoint + (x , y) query: aComponentList do: aBlock spread: true]]