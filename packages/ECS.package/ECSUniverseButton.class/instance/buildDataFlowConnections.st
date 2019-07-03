snapshot saving
buildDataFlowConnections

	(self ownerThatIsA: ECSEditor) ifNotNil: [:e | e buildDataFlowConnections; changed]