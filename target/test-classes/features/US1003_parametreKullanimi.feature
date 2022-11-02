

Feature:  US1003 kullanici parametrekullanarak arama yapabilmeli


  @parametre
  Scenario: TC06 kullanici parametre ile amazonda arama yapabilmeli
    Given kullanıcı amazon anasayfasında
    And kullanıcı "Nutella" icin arama yapar
    And sonuclarin "Nutella" icerdigini test eder
    Then sayfayi kapatir