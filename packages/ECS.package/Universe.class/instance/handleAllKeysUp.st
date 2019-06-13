events
handleAllKeysUp

	self query: #(KeyEvent id) do: [:keyEvent :id | self remove: id].
	self flag: #fixme "We should probably trigger some events here"
	"self triggerEvent: #externalEvent with: anEvent"