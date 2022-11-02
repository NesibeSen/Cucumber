#hotel my camp sitesinde 3 adet negatif senaryo olusturalım.Feature:
# dogru username yanlis password
# yanlis username dogru password
  #yanlis username yanlis password


Feature: US1006 yanlis bilgilerle siteye giris yapilamaz

  Scenario: TC09 yanlis password ile giris yapilamaz

    Given kullanici "HMCUrl" anasayfasinda
    And Log in yazisina tiklar
    And gecerli username girer
    And gecersiz password girer
    And Login butonuna basar
    Then sayfaya giris yapilamadigini kontrol eder
    And sayfayi kapatir


  Scenario: TC10 yanlis kullanici ile giris yapilamaz

    Given kullanici "HMCUrl" anasayfasinda
    And Log in yazisina tiklar
    And gecersiz username girer
    And gecerli password girer
    And Login butonuna basar
    Then sayfaya giris yapilamadigini kontrol eder
    And sayfayi kapatir

  Scenario: TC11 yanlis kullanici ile giris yapilamaz

    Given kullanici "HMCUrl" anasayfasinda
    And Log in yazisina tiklar
    And gecersiz username girer
    And gecersiz password girer
    And Login butonuna basar
    Then sayfaya giris yapilamadigini kontrol eder
    And sayfayi kapatir