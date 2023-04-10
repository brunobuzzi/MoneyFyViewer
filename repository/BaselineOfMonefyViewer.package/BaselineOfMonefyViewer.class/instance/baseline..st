baseline
baseline: spec
  <baseline>
   spec
     for: #'common'
     do: [
		spec baseline: 'XMLWriter' with: [
			spec repository: 'github://GsDevKit/XML-XMLWriter:gemstone/filetree'].
		spec baseline: 'XMLParser' with: [
			spec repository: 'github://GsDevKit/XML-XMLParser:gemstone/filetree'].
		spec baseline: 'XPath' with: [
			spec repository: 'github://GsDevKit/XML-XPath:gemstone/filetree'].
		spec baseline: 'AbstractApplicationObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository' ].
		spec baseline: 'AbstractTestFramework' with: [
			spec repository: 'github://brunobuzzi/AbstractTestFramework:master/repository' ].
		spec baseline: 'AbstractBIObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractBIObjects:master/repository' ].
		spec baseline: 'Jasvgi' with: [
			spec repository: 'github://brunobuzzi/JASVGI:master/repository'].
		spec baseline: 'Seaside3' with: [
			spec loads: #('Core' 'REST' 'Seaside-Tools-Web');
				repository: 'github://SeasideSt/Seaside:master/repository' ].
		spec baseline: 'Sewaf' with: [
			spec repository: 'github://brunobuzzi/SEWAF:master/repository' ].
"		spec baseline: 'HighchartsSt' with: [
			spec repository: 'github://brunobuzzi/HighchartsSt:v6.0.0gs/repository' ]."

		spec package: 'MonefyCore' with: [spec requires: #('AbstractApplicationObjects' 'AbstractBIObjects' 'XPath' )].
		spec package: 'MonefyParser' with: [spec requires: #('MonefyCore')].
		spec package: 'MoneyfyBusinessIntelligence' with: [spec requires: #('MonefyCore' 'MonefyParser')].
		spec package: 'MonefyParserTest' with: [spec requires: #('MonefyParser')].

		spec
			group: 'core' with: #('MonefyCore'); 
			group: 'parser' with: #('MonefyParser');
			group: 'bi' with: #('MoneyfyBusinessIntelligence');
			group: 'test' with: #('MonefyCore' 'MonefyParser' 'MonefyParserTest');
			group: 'default' with: #('test' 'bi').
		]