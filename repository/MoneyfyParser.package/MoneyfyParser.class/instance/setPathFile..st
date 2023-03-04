private
setPathFile: pathFile

	originalString := (GsFile openReadOnServer: pathFile) contentsAsUtf8.

	self parse