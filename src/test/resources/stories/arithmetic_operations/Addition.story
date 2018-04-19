Meta:
@addition

Narrative:
As a calculator user
I want to input and calculate the addition expression
So that I can get their sum as the result

Scenario: Evaluate adding expression with two numbers using GUI buttons
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|0+0=|0|
|0+1=|1|
|1+0=|1|
|-1+0=|-1|
|0+(-1)=|-1|
|1+(-1)=|0|
|1+-1=|0|
|-1+1=|0|
|-100+0=|-100|
|-123+123=|0|
|-123+1230=|1107|
|-123+12=|-111|
|5+5=|10|
|95+5=|100|
|950+9050=|10000|
|1234567890+9876543210=|11111111100|
|0.5+0.5=|1|
|0.7+9.3=|10|
|999999999999+1=|1e+12|
|1000000000000+1000000000000=|2e+12|
|999999999999+1999999999999000=|2e+12|
|1000000000000+1700000000000=|2.7e+12|
