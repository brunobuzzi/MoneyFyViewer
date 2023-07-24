other
parseFile: pathFile as: aString
	| aMoneyParser |

	aMoneyParser := MoneyfyParser newFromFile: pathFile root: self.

	moneyfyParsers at: aString put: aMoneyParser