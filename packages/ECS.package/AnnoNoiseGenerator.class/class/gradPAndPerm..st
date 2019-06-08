as yet unclassified
gradPAndPerm: aNumber

	| seed perm gradP grad3 p |
	perm := Array new: 512.
	gradP := Array new: 512.
	grad3 := {
  Vector3 x: 1 y: 1 z: 0.
  Vector3 x: -1 y: 1 z: 0.
  Vector3 x: 1 y: -1 z: 0.
  Vector3 x: -1 y: -1 z: 0.
  Vector3 x: 1 y: 0 z: 1.
  Vector3 x: -1 y: 0 z: 1.
  Vector3 x: 1 y: 0 z: -1.
  Vector3 x: -1 y: 0 z: -1.
  Vector3 x: 0 y: 1 z: 1.
  Vector3 x: 0 y: -1 z: 1.
  Vector3 x: 0 y: 1 z: -1.
  Vector3 x: 0 y: -1 z: -1.
}.
	seed := aNumber.
	(aNumber > 0 and: [aNumber < 1]) ifTrue: [
		seed := seed * 65536].
	seed := seed truncated.
	seed < 256 ifTrue: [seed := seed bitOr: (seed << 8)].
	p := self p.
	
	0 to: 255 do: [:i | | v |
		(i bitAnd: 1) > 0 
			ifTrue: [v := (p at: i + 1) bitXor: (seed bitAnd: 255)]
			ifFalse: [v := (p at: i + 1) bitXor: ((seed >> 8) bitAnd: 255)].
		perm at: (i + 1) put: v.
		perm at: (i + 1 + 256) put: v.
		gradP at: (i + 1) put: (grad3 at: (v \\ 12) + 1).
		gradP at: (i + 1 + 256) put: (grad3 at: (v \\ 12) + 1)].
	
	^ {gradP . perm}