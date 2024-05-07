# Úkol 3

Cílem je vytvořit webovou stránku pro zobrazení vizitek. Úvodní stránka bude zobrazovat seznam všech vizitek, z každé vizitky bude možné se prokliknout na
její detail, kde bude spolu s vizitkou zobrazena také mapa.

Projekt obsahuje kontroler a příslušné HTML stránky (už v adresáři `src/main/resources/templates`). Na stránce jsou ale jen pevně vložené texty. Je potřeba
upravit kontroler tak, aby poskytoval do modelu data, a upravit šablony tak, aby data z modelu zobrazovaly.

Počítej s tím, že *jméno* a *firma* budou vždy uvedené, stejně jako dva řádky adresy. Kontakty (e-mail, telefon a web) ale mohou a nemusí být vyplněné
– může být vyplněn například jenom e-mail, nebo třeba jen telefon a web.

1. Udělej fork zdrojového repository do svého účtu na GitHubu.
1. Naklonuj si repository **ze svého účtu** na GitHubu na lokální počítač.
1. Spusť si naklonovanou aplikaci a otevři v prohlížeči stránku [http://localhost:8080/](http://localhost:8080/). Zobrazí se stránka se čtyřmi vizitkami.
   Kliknutím na kteroukoli vizitku se zobrazí příklad s detailem jedné vizitky – je v něm pouze jedna vizitka spolu s mapou zobrazující adresu uvedenou na vizitce.
1. Vytvoř si entitu např. `Vizitka`, která bude obsahovat následující properties – údaje zobrazené na vizitce:
   * `jmeno`
   * `firma`
   * `ulice`
   * `obecPsc`
   * `celaAdresa` (readonly property, ve tvaru „`ulice`, `obecPsc`“)
   * `email`
   * `telefon`
   * `web`
1. Vytvoř v této entitě bezparametrický konstruktor a konstruktor obsahující všechny properties s uloženo uhodnotou (tj. bez počítané property `celaAdresa`).
1. Vytvoř si v kontroleru `VizitkaController` privátní field, který bude obsahovat seznam vizitek (`List<Vizitka>`) a naplň seznam nějakými údaji. Nezapomeň
   vytvořit i takové vizitky, které nebudou mít uvedené všechny kontakty.   
1. Uprav metodu `seznam()` tak, aby vracela `ModelAndView`. Zvol správné view a do modelu vlož seznam vizitek.
1. Uprav šablonu `seznam.html` tak, aby zobrazovala vizitky z modelu. Každá vizitka musí odkazovat na svou stránku s detailem.
1. Uprav metodu `detail()` tak, aby vracela `ModelAndView`. Uprav metodu tak, aby z požadavku prohlížeče načítala query parametr `id`. Zvol správné view a do
   modelu vlož vizitku získanou ze seznamu na základě `id` (indexu v seznamu).
1. Uprav šablonu `detail.html` tak, aby zobrazovala vizitku z modelu.
1. Pro zobrazení mapy použij připravený kód s tagem `iframe`, který vkládá vloženou mapu Mapy.cz. Jako parametr `q` se do URL předává adresa, která se má
   na mapě zobrazit. Tuto adresu je potřeba zakódovat pomocí built-in funkce Freemarkeru `url`. Místo statického stringu s adresou Czechitas na Václavském
   náměstí tedy předej property `celaAdresa` (pozor na to, že už nyní je statický string vložený v interpolaci `${…}`, tu už tedy do šablony nepřidáváš).
1. Zkontroluj výsledek v prohlížeči.
1. *Commitni* a *pushnni* změny (výsledný kód) do svého repository na GitHubu.
1. Vlož odkaz na své repository jako řešení úkolu na portálu [Moje Czechitas](https://moje.czechitas.cz).

### Odkazy

* odkaz na stránku [Lekce 4](https://java.czechitas.cz/2024-jaro/java-2-online/lekce-4.html)
* Java SE 21 [Javadoc](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/) – dokumentace všech tříd, které jsou součástí základní Javy ve verzi 21.
* Dokumentace [Spring Boot](https://spring.io/projects/spring-boot#learn) – odsud je anotace `@SpringBootApplication` a třída `SpringApplication`.
* Dokumentace [Spring Framework](https://spring.io/projects/spring-framework#learn) – odsud jsou anotace `@Controller`, `@GetRequest` a třída `ModelAndView`.
* Dokumentace [Freemarker](https://freemarker.apache.org/docs/index.html) – šablonovací systém pro HTML použitý v projektu.
* [Unsplash](https://unsplash.com) – obrázky a fotografie k použití zdarma
* [LineAwesome](https://icons8.com/line-awesome) – sada ikon pro použití na webu
