button-functionality
toggleRunContinuously

	pipeline runContinuously: pipeline runContinuously not.
	self executionModeChanged: pipeline runContinuously