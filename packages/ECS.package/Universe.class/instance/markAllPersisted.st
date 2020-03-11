private
markAllPersisted

	" mark all persisted entities so that we know that persisted edits are legal "
	| storage |
	storage := state storageOf: #id.
	
	1 to: state maxEntityIndex do: [:id |
		(storage atForFetch: id) alive ifTrue: [
			state attach: #ECSPersisted to: id]]