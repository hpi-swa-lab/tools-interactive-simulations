accessing
do: aBlock

	1 to: x size do: [:num |
		offset := num.
		aBlock value: self]