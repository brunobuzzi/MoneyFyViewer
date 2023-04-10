other
renderYearScrollOn: html

	html form class: 'float-left centered-unique-form'; with: [
		html fieldSet with: [
			html legend with: [
				html strong: 'Year Scroller'.
				html label attributeAt: 'for' put: 'year'; with: ('Year' translateIn: self session).
				html textInput attributeAt: 'id' put: 'year'; readonly: true; with: currentYearScope.
				html submitButton callback: [currentYearScope := currentYearScope - 1]; with: '-'.
				html submitButton callback: [currentYearScope := currentYearScope + 1]; with: '+'.
			].
		].
	].