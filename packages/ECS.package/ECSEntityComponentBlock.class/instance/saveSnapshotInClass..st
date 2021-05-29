as yet unclassified
saveSnapshotInClass: aClass

	aClass compile: 'initialize', String cr, String cr, String tab, 
		((self universe storeInitializeStringUseCurrent: false) copyReplaceAll: String cr with: (String cr, String tab))