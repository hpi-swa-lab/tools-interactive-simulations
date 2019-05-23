accessing
queryString: aString

	self privateQueryString: aString.
	self queryEditor changeText: self queryString 