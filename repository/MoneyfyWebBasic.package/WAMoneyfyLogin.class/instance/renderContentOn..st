other
renderContentOn: html

	super renderContentOn: html.

	self session systemRoot: (UserGlobals at: #MoneyfyRoot)