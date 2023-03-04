private
setReadStream: aReadStream

	originalString := aReadStream.

	attributes :=  OrderedCollection new.

	convertedValues := OrderedCollection new.

	self parse