iterating
parsedLineAt: index do: monadicBlock

	monadicBlock value: (convertedValues at: index ifAbsent: [^self])