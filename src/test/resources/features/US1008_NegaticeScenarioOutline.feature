
  Feature: US1008 kullanıcı farklı yanlış sıfre ve kullanıcı adıyla giris yapamaz

    Scenario Outline: TC13 yanlis kullanici adi ve sifrelerle giris yapilamaz

      Given kullanici "HMCUrl" anasayfasinda
      Then Log in yazisina tiklar
      And gecersiz username olarak "<username>" girer
      And gecersiz password olarak "<password>" girer
      And Login butonuna basar
      Then sayfaya giris yapilamadigini kontrol eder


      Examples:
        |username|password |
        |Manager5|Manager5!|
        |Manager6|Manager6!|
        |Manager7|Manager7!|
        |Manager8|Manager8!|
        |Manager9|Manager9!|  And sayfayi kapatir