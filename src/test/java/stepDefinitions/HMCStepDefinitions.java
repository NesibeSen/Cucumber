package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import pages.HMCPage;
import utilities.ConfigReader;
import utilities.Driver;

public class HMCStepDefinitions {

    HMCPage hmcPage=new HMCPage();

    @Given("Log in yazisina tiklar")
    public void log_in_yazisina_tiklar() {
hmcPage.loginButonu.click();
    }
    @Given("gecerli username girer")
    public void gecerli_username_girer() {
hmcPage.usernameKutusu.sendKeys(ConfigReader.getProperty("HMCValidUsername"));
    }
    @Given("gecerli password girer")
    public void gecerli_password_girer() {
        hmcPage.passwordKutusu.sendKeys(ConfigReader.getProperty("HMCValidPassword"));

    }
    @Given("Login butonuna basar")
    public void login_butonuna_basar() {
        hmcPage.loginButonu2.click();

    }
    @Then("sayfaya giris yaptigini kontrol eder")
    public void sayfaya_giris_yaptigini_kontrol_eder() {

        Assert.assertTrue(hmcPage.hotelManagement.isDisplayed());

    }

    @And("gecersiz password girer")
    public void gecersizPasswordGirer() {
        hmcPage.passwordKutusu.sendKeys(ConfigReader.getProperty("HMCWrongPassword"));
    }

    @Then("sayfaya giris yapilamadigini kontrol eder")
    public void sayfayaGirisYapilamadiginiKontrolEder() {
        Assert.assertTrue(hmcPage.loginButonu2.isDisplayed());
    }

    @And("gecersiz username girer")
    public void gecersizUsernameGirer() {

        hmcPage.usernameKutusu.sendKeys(ConfigReader.getProperty("HMCWrongUsername"));
    }

    @And("gecersiz username olarak {string} girer")
    public void gecersizUsernameOlarakGirer(String username) {
    hmcPage.usernameKutusu.sendKeys(username);



    }


    @And("gecersiz password olarak {string} girer")
    public void gecersizPasswordOlarakGirer(String password) {
        hmcPage.passwordKutusu.sendKeys(password);
    }
}
