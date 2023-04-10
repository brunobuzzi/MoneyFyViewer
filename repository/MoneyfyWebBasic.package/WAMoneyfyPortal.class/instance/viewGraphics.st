other
viewGraphics
	^(arena class == WAMoneyfyGraphicsComposite) 
	ifTrue: [arena]
	ifFalse: [WAMoneyfyGraphicsComposite parent: self]