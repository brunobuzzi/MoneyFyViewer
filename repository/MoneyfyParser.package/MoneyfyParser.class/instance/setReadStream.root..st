private
setReadStream: aReadStream root: aMoneyfyParser

	systemRoot := aMoneyfyParser.

	originalString := aReadStream.

	attributes :=  OrderedCollection new.

	convertedValues := OrderedCollection new.

	self parse