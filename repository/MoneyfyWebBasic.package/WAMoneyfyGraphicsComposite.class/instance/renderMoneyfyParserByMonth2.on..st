other
renderMoneyfyParserByMonth2: moneyfyParser on: html
	| aHighchart categories data |

	aHighchart := html highcharts newChart. "HighchartsSeriesColumn"

	data := moneyfyParser expensesCollectionWithCategoryAndAmountForYear: currentYearScope month: currentMonthScope.

	categories := moneyfyParser collectCategories.

	aHighchart addYAxis title text: 'Quantity'.
	aHighchart legend enabled: true.
	aHighchart title text: 'Moneyfy Chart'.
	aHighchart subtitle text: 'Expenses'.
	aHighchart xAxis title text: 'Expenses Category'.
	aHighchart xAxis type: 'category'.
	aHighchart xAxis categories: categories.

	(aHighchart addSeriesOf: "HighchartsSeriesPie" HighchartsSeriesColumn)
		index: 0;
		name: 'All Expenses';
		data: data.

	html div script: aHighchart