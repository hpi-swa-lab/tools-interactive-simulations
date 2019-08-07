as yet unclassified
in: aUniverse around: aPoint query: aComponentList do: aBlock

	-1 to: 1 do: [:x |
		-1 to: 1 do: [:y |
			self in: aUniverse
				at: ((x + aPoint x truncated) @ (y + aPoint y truncated))
				query: aComponentList
				do: aBlock
				spread: true]]