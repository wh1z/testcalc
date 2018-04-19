package com.whiz.test.pages;

import net.thucydides.core.annotations.DefaultUrl;
import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.interactions.Actions;

@DefaultUrl("http://www.google.com/search?q=calculator")
public class CalculatorPage extends PageObject {

    //TODO move static data(url, ids) out (Properties)
    @FindBy(id = "cwos")
    private WebElementFacade display;

    // Operator buttons: '+', '-', '*', '/'
    @FindBy(id = "cwbt46")
    private WebElementFacade btnPlus;
    @FindBy(id = "cwbt36")
    private WebElementFacade btnMinus;
    @FindBy(id = "cwbt26")
    private WebElementFacade btnMultiply;
    @FindBy(id = "cwbt16")
    private WebElementFacade btnDivide;

    // Dot button: '.'
    @FindBy(id = "cwbt44")
    private WebElementFacade btnDot;

    // Result button: '='
    @FindBy(id = "cwbt45")
    private WebElementFacade btnResult;

    // Round Brackets buttons: '(', ')'
    @FindBy(id = "cwbt03")
    private WebElementFacade btnOpenBracket;
    @FindBy(id = "cwbt04")
    private WebElementFacade btnClosedBracket;

    // Digit buttons: '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
    @FindBy(id = "cwbt43")
    private WebElementFacade btnDigit0;
    @FindBy(id = "cwbt33")
    private WebElementFacade btnDigit1;
    @FindBy(id = "cwbt34")
    private WebElementFacade btnDigit2;
    @FindBy(id = "cwbt35")
    private WebElementFacade btnDigit3;
    @FindBy(id = "cwbt23")
    private WebElementFacade btnDigit4;
    @FindBy(id = "cwbt24")
    private WebElementFacade btnDigit5;
    @FindBy(id = "cwbt25")
    private WebElementFacade btnDigit6;
    @FindBy(id = "cwbt13")
    private WebElementFacade btnDigit7;
    @FindBy(id = "cwbt14")
    private WebElementFacade btnDigit8;
    @FindBy(id = "cwbt15")
    private WebElementFacade btnDigit9;

    public void click_button(char buttonSymbol) {
        //TODO change the way of selecting button
        switch (buttonSymbol) {
            case ' ': break;
            case '0':
                btnDigit0.click();
                break;
            case '1':
                btnDigit1.click();
                break;
            case '2':
                btnDigit2.click();
                break;
            case '3':
                btnDigit3.click();
                break;
            case '4':
                btnDigit4.click();
                break;
            case '5':
                btnDigit5.click();
                break;
            case '6':
                btnDigit6.click();
                break;
            case '7':
                btnDigit7.click();
                break;
            case '8':
                btnDigit8.click();
                break;
            case '9':
                btnDigit9.click();
                break;
            case '+':
                btnPlus.click();
                break;
            case '-':
                btnMinus.click();
                break;
            case '*':
                btnMultiply.click();
                break;
            case '/':
                btnDivide.click();
                break;
            case '.':
                btnDot.click();
                break;
            case '=':
                btnResult.click();
                break;
            case '(':
                btnOpenBracket.click();
                break;
            case ')':
                btnClosedBracket.click();
                break;
            default:
                throw new NoSuchElementException("There is no button with symbol: '" + buttonSymbol + "'");
        }
    }

    public void focus_and_input_from_keyboard(String input) {
        // Actions class is used to first focus on the element then send required keys. Otherwise, cannot focus element error appears
        Actions actions = new Actions(super.getDriver());
        actions.moveToElement(display);
        actions.click();
        actions.sendKeys(input.split(""));
        actions.build().perform();
    }

    public String getDisplayedValue() {
        return display.getText();
    }

    public void focus_and_press_enter() {
//        Actions class is used to first focus on the element then send required keys. Otherwise, cannot focus element error appears
        Actions actions = new Actions(super.getDriver());
        actions.moveToElement(display);
        actions.sendKeys(Keys.ENTER);
        actions.build().perform();
    }
}
