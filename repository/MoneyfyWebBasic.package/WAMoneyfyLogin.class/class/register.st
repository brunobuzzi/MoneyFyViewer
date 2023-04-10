other
register
	| application |

	WAAdmin unregister: 'moneyfy'.

	application := WAAdmin register: self asApplicationAt: 'moneyfy'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WAMoneyfySession;
		addLibrary: Highstock6DevelopmentMetadataLibrary; "see issue #800"
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.