#amazon sayfasina gidip sirasiyla nutella java elma armut aratip sonuclarin arama yaptigimiz kelimeyi içerdigini test edelim


  Feature: US1007 kullanici amazon sayfasinda istedigi kelimeleri aratir

    Scenario Outline: TC12 amazonda listedeki elementleri arama

      Given kullanici "amazonUrl" anasayfasinda
      Then kullanıcı "<istenenKelime>" icin arama yapar
      And sonuclarin "<istenenKelimeKontrol>" icerdigini test eder
      And sayfayi kapatir


      Examples:

      |istenenKelime|istenenKelimeKontrol|
      |nutella      |nutella             |
      |java         |java                |
      |elma         |elma                |
      |armut        |armut               |