package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features", // feature dosyalarini nereden bulacagini belirtir
        glue="stepDefinitions", // step definition dosyalrini nereden bulacagini gosterir
        tags="@hmc", // o an calistirmak istedigimiz tag i belirtir
        dryRun = false // true olursa test calismadan onceki esksik adimlari bize verir
                       // false  olursa testelerimiz calistirir.
)

public class Runner {
    /*
    Bİr freamworkte bir tek runner classı yeterli olabilir.
    runner classında class bodysine hicbirsey olmaz. runner classimizi onemli yapan iki adet annotation vardır.
    @RunWith(Cucumber.class) notasyonu Runner classina calisma ozelligi katar
    bu notasyon oldugu icin Cucumber frameworkumuzde Junit kullanmayi tercih ediyoruz.
     */
}
