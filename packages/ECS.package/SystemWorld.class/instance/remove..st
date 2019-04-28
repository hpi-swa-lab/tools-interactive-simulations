as yet unclassified
remove: anEntityId

	freeIndexList add: anEntityId.
	" could also be deferred by keeping an 'alive' bitset "
	components do: [:list | list remove: anEntityId]