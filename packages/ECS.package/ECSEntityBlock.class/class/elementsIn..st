as yet unclassified
elementsIn: aUniverse

	| query ids |

	query := aUniverse query: #().
	ids := OrderedCollection new.
	query do: [:element | ids add: element first].
	^ ids