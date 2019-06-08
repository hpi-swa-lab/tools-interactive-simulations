api
storeOn: aStream

	" have to hardcode Universe class name here because `self className` will use our subclasses' class name and thus duplicate the initialize "
	aStream nextPutAll: Universe name; nextPutAll: ' new'; cr.
	self storeAttributeSettingOn: aStream