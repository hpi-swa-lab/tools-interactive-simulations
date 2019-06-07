as yet unclassified
generateNoise

	| mapSize frequencies amplitudes noises sumOfNoises pi |
	pi := Float pi.
	frequencies := (1 to: 30).
	amplitudes := frequencies collect: [:each | 1].
	noises := frequencies collect: [:frequency | | phase |
		phase := R next * 2 * pi.
		(0 to: (MapSize ** 2) - 1) collect: [:idx | | x y |
			x := idx \\ MapSize.
			y := idx // MapSize.
			((2 * pi * frequency * (x * y) / (MapSize ** 2)) + phase) sin]].

	sumOfNoises := [ | output |
		output := Array new: MapSize ** 2 withAll: 0.0.
		noises withIndexDo: [:noise :freqIdx |
			(1 to: MapSize) do: [:x |
				(1 to: MapSize) do: [:y | | idx |
					idx := x + (MapSize * (y - 1)).
					output at: idx put: (output at: idx) + ((amplitudes at: freqIdx) * (noise at: idx))]]].
		output] value.

	^ sumOfNoises