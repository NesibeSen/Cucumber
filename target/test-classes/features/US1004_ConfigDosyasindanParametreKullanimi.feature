Feature: US1004 kullanici parametre ile configuration file i kullanabilmeli
@config
  Scenario: TC 07 configuration properties dosyasindan parametre kullanimi

    Given kullanici "brcUrl" anasayfasinda
  Then kullanici 3 sn bekler
    And url in "blue" icerdigini test eder
    Then sayfayi kapatir