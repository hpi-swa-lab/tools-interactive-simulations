as yet unclassified
selectTower: anEntityId in: aUniverse state: aGameState

	aGameState selectedTower: anEntityId.
	aUniverse query: #(OnebitButton OnebitUpgradeButton) do: [:button :upgradeButton |
		button visible: anEntityId alive]