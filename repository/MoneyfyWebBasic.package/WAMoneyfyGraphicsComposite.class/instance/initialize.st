initialize
initialize 

	super initialize.

	self initializeBatchedLists.

	isRenderingChart := false.
	self setChartTimeScopeByMonth.

	self basicCreateChartDefinition.