package com.whiz.test.steps;

import com.whiz.test.steps.serenity.EndUserSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.*;
import static com.whiz.test.steps.serenity.EndUserSteps.InputDeviceType;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

public class CalculationSteps {

    @Steps
    private EndUserSteps endUser;

    @Given("user is on the Calculator page")
    public void givenTheUserIsOnTheCalculatorPage() {
        endUser.is_the_home_page();
    }

    //  TODO trim the input (standard input.trim() doesn't work)
    @When("user inputs '$expression'")
    public void whenUserInputs(String expression){
        endUser.input_expression(expression);
    }

    @Given("user{'s| changes} input device {is|to} '$inputDevice'")
    public void givenUsersInputDeviceType(InputDeviceType inputDevice) {
        endUser.setInputDevice(inputDevice);
    }

    //  TODO define own custom parameter converter for char
    @When("user clicks button '$buttonSymbol'")
    public void whenUserClicksButton(String buttonSymbol) {
        assertThat(buttonSymbol.length(), equalTo(1));
        endUser.click_button(buttonSymbol.charAt(0));
    }

    //TODO add step to clear the calculators display (get rid of restarting browser and execute clear before every scenario)

    @When("user hit 'Enter'")
    public void whenUserHitEnter(){
        endUser.press_enter();
    }

    @Then("the result '$result' should be {returned|displayed}")
    public void thenTheResultShouldBeReturned(String result) {
        endUser.should_get_result(result);
    }

}