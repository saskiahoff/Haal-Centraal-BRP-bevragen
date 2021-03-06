# language: nl

# User story #128
Functionaliteit: Als gemeente wil ik het juiste geslacht van de gerelateerde tonen 
  Een persoon kan een verzoek indienen om het geslacht van een gerelateerde (ouder, kind, partner, ex-partner) ongewijzigd te laten bij een geslachtwijziging van de gerelateerde. 
  Attribuut geslachtsaanduiding op de embedded resource wordt gerepresenteerd met de waarde voorafgaand aan de geslachtswijziging:
  - geslachtsaanduiding M of V of O

  # Om de onderstaande scenario's te kunnen gebruiken in een geautomatiseerde test van de API, moeten bij de API bepaalde personen bekend zijn. Dit staat beschreven in "testdata.csv".
  Achtergrond:
    Gegeven de registratie ingeschreven personen kent zoals beschreven in testdata.csv

Scenario: de partner heeft geslachtswijziging ondergaan
    Gegeven: de te raadplegen persoon heeft een partner die zelf ingeschreven persoon is
    En de partner van de ingeschreven persoon heeft in de registratie burgerservicenummer 999999047, 
    En de partner heeft een geslachtswijziging ondergaan
    En de persoon heeft een verzoek ingediend dat het geslachtswijziging van de partner op de eigen persoonslijst ongedaan wordt gemaakt
    Als de partners worden geraadpleegd van de ingeschreven persoon met burgerservicenummer 999999023
    Dan wordt de partner gevonden met burgerservicenummer=999999047
    En heeft deze partner de geslachtsaanduiding voorafgaand aan de geslachtswijziging.

Scenario: de ex-partner heeft geslachtswijziging ondergaan
    Gegeven: de te raadplegen persoon heeft een partner die zelf ingeschreven persoon is
    En de ex-partner van de ingeschreven persoon heeft in de registratie burgerservicenummer 999999047, 
    En de ex-partner heeft een geslachtswijziging ondergaan
    En de persoon heeft een verzoek ingediend dat het geslachtswijziging van de ex-partner op de eigen persoonslijst ongedaan wordt gemaakt
    Als de partners worden geraadpleegd van de ingeschreven persoon met burgerservicenummer 999999023
    Dan wordt de ex-partner gevonden met burgerservicenummer=999999047
    En heeft deze ex-partner de geslachtsaanduiding voorafgaand aan de geslachtswijziging.
    
Scenario: het kind heeft geslachtswijziging ondergaan
    Gegeven: de te raadplegen persoon heeft een kind die zelf ingeschreven persoon is
    En het kind van de ingeschreven persoon heeft in de registratie burgerservicenummer 999999047, 
    En het kind heeft een geslachtswijziging ondergaan
    En de persoon heeft een verzoek ingediend dat het geslachtswijziging van het kind op de eigen persoonslijst ongedaan wordt gemaakt
    Als de kinderen worden geraadpleegd van de ingeschreven persoon met burgerservicenummer 999999023
    Dan wordt het kind gevonden met burgerservicenummer=999999047
    En heeft dit kind de geslachtsaanduiding voorafgaand aan de geslachtswijziging.
    
 Scenario: de ouder heeft geslachtswijziging ondergaan
    Gegeven: de te raadplegen persoon heeft een ouder die zelf ingeschreven persoon is
    En de ouder van de ingeschreven persoon heeft in de registratie burgerservicenummer 999999047, 
    En de ouder heeft een geslachtswijziging ondergaan
    En de persoon heeft een verzoek ingediend dat het geslachtswijziging van de ouder op de eigen persoonslijst ongedaan wordt gemaakt
    Als de ouders worden geraadpleegd van de ingeschreven persoon met burgerservicenummer 999999023
    Dan wordt de ouder gevonden met burgerservicenummer=999999047
    En heeft deze ouder de geslachtsaanduiding voorafgaand aan de geslachtswijziging.
