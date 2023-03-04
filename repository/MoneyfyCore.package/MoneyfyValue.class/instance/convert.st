convert
convert

	convertedValue := attribute typeIsNumber 
		ifFalse: [attribute typeIsDate 
					ifFalse: [value]
					ifTrue: [Date fromStream: value readStream]]
		ifTrue: [Number fromStream: value readStream]