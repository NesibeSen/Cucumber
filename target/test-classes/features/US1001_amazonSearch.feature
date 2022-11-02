@tumu
Feature: US1001 Kullanici Amazon Sayfasında arama yapar

  @nutella @ikisi
  Scenario: TC01 Kullanıcı amazonda kelime aratır

    Given kullanıcı amazon anasayfasında
    Then kullanıcı Nutella icin arama yapar
    And sonuclarin Nutella icerdigini test eder
    And sayfayi kapatir

@java @ikisi
    Scenario: TC02 kullanici amazonda Java aratir

      Given kullanıcı amazon anasayfasında
      Then kullanıcı Java icin arama yapar
      And sonuclarin Java icerdigini test eder
      And sayfayi kapatir

@iphone
      Scenario: TC03 kullanici iphone aratir
        When kullanıcı amazon anasayfasında
        And kullanıcı iphone icin arama yapar
        And sonuclarin iphone icerdigini test eder
        And sayfayi kapatir