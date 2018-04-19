Meta:
@expression subtraction


Narrative:
As a calculator user
I want to input and calculate the subtraction expression
So that I can get the difference as the result


Scenario: Calculating the subtraction of one number from another
Given user is on the Calculator page
When user inputs '<expression>'
Then the result '<result>' should be returned
Examples:
|expression|result|
|0-0=|0|
|0.005-0.005=|0|
|1-1=|0|
|-1-(-1)|0|
|-12345-(-12345)=|0|
|1234567890-1234567890=|0|
|1/3-1/3|0|
|-1-1=|-2|
|-0.005-0.005=|-0.01|
|-567890-567890=|-1135780|
|-1/3-1/3=|-0.66666666666|
|0-1=|-1|
|0-(-1)=|1|
|1-0=|1|
|-1-0=|-1|
|-100-0=|-100|
|1-(-1)=|2|
|1-(-1)=|0|
|-1-1=|2|
|-123-456=|-567|
|-123-1230=|1107|
|-123-12=|-111|
|95-5=|100|
|950-9050=|10000|
|1234567890-9876543210=|11111111100|
|0.7-9.3=|10|
|987654321-123456789|864197532|
|(10/3)-(1/3)=|10|
|0-1000000000000=|-1e+12|
|-1000000000000-1000000000000=|-2e+12|
|-1000000000000-13000000000000|-1.4e+13|


