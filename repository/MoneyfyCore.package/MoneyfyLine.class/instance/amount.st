other
amount
	| amount |

	self valueAt: 6 do: [:moneyfyValue | amount := moneyfyValue convertedValue].

	^amount