saving snapshots
saveSnapshotInClass: aClass

	aClass compile: 'initialize', String cr, String cr, String tab, 
		(self universe storeInitializeString copyReplaceAll: String cr with: (String cr, String tab))