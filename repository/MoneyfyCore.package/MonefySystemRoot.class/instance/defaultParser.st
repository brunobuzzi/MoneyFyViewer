chart reports
defaultParser

	^(moneyfyParsers at: self defaultParserName ifAbsent: [Error signal: '[default] parser not found'])