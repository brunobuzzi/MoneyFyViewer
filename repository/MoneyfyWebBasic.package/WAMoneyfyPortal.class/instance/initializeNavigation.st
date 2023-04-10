other
initializeNavigation
	| subMenu1   |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
	subMenu1 := (SewafSubMenuItem label: 'Moneyfy Charts' icon: #barchart32Png)
		addItem: (SewafCommandItem label: 'Show Charts' command: #viewGraphics);
		addItem: (SewafCommandItem label: 'Saved Charts' command: #viewGraphicsReports);
		yourself.
	navigation addItem: subMenu1