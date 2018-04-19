Meta:
@operation division

Narrative:
As a calculator user
I want to input and calculate the division expression
So that I can get the result

Scenario: Evaluate division expression with two numbers
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|1/1=|1|
|123/123=|1|
|123/1=|123|
|225/25=|9|
|1/0.1=|10|
|1/0.01=|100|
|1/10=|0.1|
|1/100=|0.01|
|23456/1000=|23.456|
|-1/1=|-1|
|1/(-1)=|-1|
|-1/(-1)=|1|
|-369/3=|-123|
|2/(-0.5)=|-4|
|-150/(-50)=|3|
|-1000000000000/1=|-1e+12|
|-1000000000000/10=|-100000000000|
|1/1000000000000=|1e-12|

Scenario: Evaluate division expression where the dividend is zero
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|0/1=|0|
|0/456=|0|
|0/(-1)=|0|
|0/(-789)=|0|
|0/0.01=|0|


Scenario: Evaluate division expression where the divisor is zero
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|0/0=|Error|
|1/0=|Infinity|
|789/0=|Infinity|
|-1/0=|-Infinity|
|-789/0=|-Infinity|
|0.9/0=|Infinity|