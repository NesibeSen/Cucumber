@wip
Feature: US1002 kullanici ortak adimlari Background ile calistirir

  Background: ortak adim

    Given kullanıcı amazon anasayfasında

    Scenario: TC04 amazon nutella arama
      And kullanıcı Nutella icin arama yapar
      Then sonuclarin Nutella icerdigini test eder
      And sayfayi kapatir


      Scenario: TC05   amazon java arama
        And kullanıcı Java icin arama yapar
        Then sonuclarin Java icerdigini test eder
        And sayfayi kapatir