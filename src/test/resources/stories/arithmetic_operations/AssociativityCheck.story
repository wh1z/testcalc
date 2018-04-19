Meta:
@operation
@associativity

Narrative:
As a calculator user
I want associative property of operations to be as expected
So that calculation results are correct according/regardless the brackets possition


Scenario: Check that addition and multiplication operations are associative
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|(1+2)+3=|6|
|1+(2+3)=|6|
|(8*4)*2=|64|
|8*(4*2)=|64|

Scenario: Check that subtraction and division operations are not associative
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|(1-2)-3=|-4|
|1-(2-3)=|2|
|(8/4)/2=|1|
|8/(4/2)=|4|
