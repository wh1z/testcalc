Meta:
@operation
@comutativity

Narrative:
As a calculator user
I want comutative property of operations to be as expected
So that calculation results are correct according/regardless the order of operands

Scenario: Check that addition and multiplication operations are comutative (order of the operands does not change the result)
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|10+5=|15|
|5+10=|15|
|10*5=|50|
|5*10=|50|

Scenario: Check that subtraction and division operations are not comutative (order of the operands changes the result)
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|10-5=|5|
|5-10=|-5|
|10/5=|2|
|5/10=|0.5|