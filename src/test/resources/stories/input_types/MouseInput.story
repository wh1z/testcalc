Meta:
@input

Narrative:
As a calculator user
I want to be able to use it with only mouse as input device
So that I can do calculations without keyboard

Scenario: Check all digit buttons are as expected by clicking them
Given user is on the Calculator page
And user's input device is 'mouse'
When user inputs '1234567890'
Then the result '1234567890' should be displayed

Scenario: Check non-digit buttons are as expected by inputing expression containg all of them
Given user is on the Calculator page
And user's input device is 'mouse'
When user inputs '(1+2)*2-2/0.5'
Then the result '(1 + 2) × 2 - 2 ÷ 0.5' should be displayed
When user clicks button '='
Then the result '2' should be returned