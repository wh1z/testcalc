Meta:
@expression multiplication

Narrative:
As a calculator user
I want all operators to be executed according to their priority
So that correct results are returned for expression with multiple operations

Scenario: Check that addition operator has the same priority as subtraction
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|10+5-2=|13|
|5-2+10=|13|

Scenario: Check that multiplication operator has the same priority as division
Meta: @test
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|10*5/2=|25|
|10/2*5=|25|

Scenario: Check that multiplication operator has higher priority than addition and subtraction
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|10+5*2=|20|
|10*2+5=|25|
|10*5-2=|48|
|10-2*5=|0|
|10+5*10-5=|55|

Scenario: Check that division operator has higher priority than addition and subtraction
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|10+5/2=|12.5|
|10/2+5=|10|
|10-5/2=|7.5|
|10/2-5=|0|
|6+10/5-3=|5|

Scenario: Check that round brackets can be used to change operators' priorities
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result
|(10+5)*2=|30|
|(10-5)*2=|10|
|(10+5)/5=|3|
|(10-5)/5=|1|
|69/(2+3*7)-13=|-10|
|(10+5)*(10-5)=|75|
|(10+5)/(10-5)=|3|
|2+3*(6+4)/5-7=|1|
|1-5/(8-3)*2+6=|5|