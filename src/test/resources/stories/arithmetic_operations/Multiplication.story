Meta:
@multiplication

Narrative:
As a calculator user
I want to input and calculate the multiplication expression
So that I can get the product as the result

!--Big numbers check
!--Another scenario with changed n1 and n2 to check комутативність

Scenario: Evaluate multiplying expression with two numbers
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|0*0=|0|
|1*1=|1|
|(-1)*1=|-1|
|(-1)*(-1)=|1|
|0*456=|0|
|(-234)*0=|0|
|(-0.0345)*0=|0|
|1*345=|345|
|(-1)*678=|-678|
|27*100=|2700|
|(-0.01)*5678=|-56.78|
|(-25)*(-0.2)=|5|
|(-251)*(-5)=|1255|
|(1/3)*3=|1|
|100000000000*1=|100000000000|
|1000000000000*1=|1e+12|