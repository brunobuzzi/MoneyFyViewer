other
valueAt: index do: aBlock

	aBlock value: (values at: index ifAbsent: [^self])