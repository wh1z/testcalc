package com.whiz.test.steps.serenity;

    import com.whiz.test.pages.CalculatorPage;
    import net.thucydides.core.annotations.Step;

    import static org.hamcrest.MatcherAssert.assertThat;
    import static org.hamcrest.Matchers.equalTo;
    import static org.hamcrest.Matchers.hasItem;

public class EndUserSteps {
    CalculatorPage calculatorPage;

    /* The user is able to input using both keyboard and mouse
    * by default keyboard is the input device */
    public enum InputDeviceType { mouse, keyboard }
    private InputDeviceType inputDevice = InputDeviceType.keyboard;

    public InputDeviceType getInputDevice() {
        return inputDevice;
    }

    public void setInputDevice(InputDeviceType inputDevice) {
        this.inputDevice = inputDevice;
    }

    @Step
    public void is_the_home_page() {
        calculatorPage.open();
    }

    @Step
    public void input_expression(String input) {
        if (inputDevice.equals(InputDeviceType.keyboard)) {
            calculatorPage.focus_and_input_from_keyboard(input);
        } else {
            //click buttons on GUI one by one if the input device is mouse
            for (int i = 0; i < input.length(); i++) {
                calculatorPage.click_button(input.charAt(i));
            }
        }
    }

    @Step
    public void click_button(char buttonSymbol) {
        calculatorPage.click_button(buttonSymbol);
    }

    @Step
    public void press_enter() {
        calculatorPage.focus_and_press_enter();
    }

    @Step
    public void should_get_result(String expectedResult) {
        assertThat(calculatorPage.getDisplayedValue(), equalTo(expectedResult));
    }

}
