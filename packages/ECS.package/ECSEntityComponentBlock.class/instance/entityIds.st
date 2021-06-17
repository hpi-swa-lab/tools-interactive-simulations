as yet unclassified
entityIds

	| query ids |

	query := self universe query: #().
	ids := OrderedCollection new.
	query do: [:element | ids add: element first].
	^ ids
	
