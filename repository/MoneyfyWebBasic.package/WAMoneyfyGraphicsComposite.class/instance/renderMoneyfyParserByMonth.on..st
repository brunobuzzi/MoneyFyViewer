other
renderMoneyfyParserByMonth: moneyfyParser on: html
	| aHighchart categories rawData data |

	aHighchart := html highcharts newChart. "HighchartsSeriesColumn"
	data := OrderedCollection new.
	rawData := Dictionary new.
	moneyfyParser convertedValuesSelect:  [:moneyfyLine | self shouldRender: moneyfyLine] do: [:moneyfyLine | 
		moneyfyLine categoryAndAmountDo: [:category :amount | 
			(rawData includesKey: category) ifFalse: [rawData at: category put: 0].
			rawData at: category put: (rawData at: category) + amount].
	].

	rawData keysAndValuesDo: [:key : value | data add: (Array with: key with: value abs)]. 

	categories := moneyfyParser collectCategories.

	aHighchart addYAxis title text: 'Quantity'.
	aHighchart legend enabled: true.
	aHighchart title text: 'Moneyfy Chart'.
	aHighchart subtitle text: 'Expenses'.
	aHighchart xAxis title text: 'Expenses Category'.
	aHighchart xAxis type: 'category'.
	aHighchart xAxis categories: categories.

	(aHighchart addSeriesOf: HighchartsSeriesPie "HighchartsSeriesColumn")
		index: 0;
		name: 'All Expenses';
		data: data.

	html div script: aHighchart