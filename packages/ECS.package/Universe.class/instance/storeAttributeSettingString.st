api
storeAttributeSettingString

	^ String streamContents: [:string | self storeAttributeSettingOn: string]