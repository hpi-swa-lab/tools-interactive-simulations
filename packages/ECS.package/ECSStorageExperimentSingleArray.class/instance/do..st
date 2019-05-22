accessing
do: aBlock

	0 to: array size // self componentSize - 1 do: [:num |
		offset := num.
		aBlock value: self]