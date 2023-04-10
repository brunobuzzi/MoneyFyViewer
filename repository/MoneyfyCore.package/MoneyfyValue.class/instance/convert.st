convert
convert

	convertedValue := attribute typeIsNumber 
		ifFalse: [attribute typeIsDate 
					ifFalse: [value]
					ifTrue: [Date fromStream: value readStream]]
		ifTrue: [| numberNoThousandComma |
					numberNoThousandComma := value copy.
					numberNoThousandComma removeAllPresent: ','.
					Number fromStream: numberNoThousandComma readStream]