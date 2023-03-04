mapping monefy to smalltalk
smalltalkClassMapFor: monefyTypeString

	monefyTypeString = #'date' ifTrue: [^Date].
	monefyTypeString = #'account' ifTrue: [^String].
	monefyTypeString = #'category' ifTrue: [^String].
	monefyTypeString = #'amount' ifTrue: [^Number].
	monefyTypeString = #'currency' ifTrue: [^MoneyfyCurrency].
	monefyTypeString = #'converted amount' ifTrue: [^Number].
	monefyTypeString = #'description' ifTrue: [^String].

	^self error: 'Mapping not found for [', monefyTypeString, ']'