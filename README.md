# eksamen-devops

## Del 1 DevOps-prinsipper

---
*Q: Hva er utfordringene med dagens systemutviklingsprosess -
og hvordan vil innføring av DevOps kunne være med på å løse disse?
Hvilke DevOps prinsipper blir brutt?*

A: De bryter kraftig med flyt-prinsippet; Deploymentprosessen er treg og vaklete. De deployer sjeldent, manuelt og med lite feilmargin, som betyr at endring tar lang tid. 
De er derfor ikke i stand til å reagere til endringer i markedet eller på kritiske bugs, eller utvikle produktet sitt på en effektiv måte.
Ved å praktisere CI og CD på en god måte sørger man for at utviklerne enkelt kan pushe mindre endringer mange ganger hver dag, på en måte
som ikke setter stabiliteten til applikasjonen i spill. Tester i pipeline gir byggbare artifakter, mens monitorering ogalarmer sørger for stabilitet i produksjon. 

Overlevering til et ops-teamet er også problematisk. Se mer om dette i spørsmål 3.

---
*Q: En vanlig respons på mange feil under release av ny funksjonalitet er å gjøre det mindre hyppig,
og samtidig forsøke å legge på mer kontroll og QA. Hva er problemet med dette ut ifra et DevOps perspektiv, og hva kan
være en bedre tilnærming?*

A: Man lærer mye av å feile, så lenge man fokuserer på å lære av feilene. Ved å sørge for god flyt evner man å deploye hurtig, 
og da kan man feile fort, lære og forbedre funksjonaliteten.  

---
*Q: Teamet overleverer kode til en annen avdelng som har ansvar for drift - hva er utfordringen med dette ut ifra et
DevOps perspektiv, og hvilke gevinster kan man få ved at team han ansvar for både drift- og utvikling?*

A: drift-teamet er gjerne lite kjente med koden som skal deployes og driftes, og vil derfor være ineffektive i feilsøking og bug-fiksing NÅR noe går galt.
Etter Devops-prinsippene burde det være samme team som utvikler og sørger for deployment og drift av egen kode.
De har "Skin in the game", dvs noe å tape, dersom koden de leverer ikke holder god kvalitet, og alle er tjent med at de utfører godt håndverk.

---
*Q: Å release kode ofte kan også by på utfordringer. Beskriv hvilke- og hvordan vi kan bruke DevOps prinsipper til å
redusere eller fjerne risiko ved hyppige leveraner.*

A: Utfordringer kan være at bygget kræsjer ofte, og at teamene bruker mye tid på å gjenopprette tjenestene. 
Løsningen ligger i automasjon, automatiske tester og versjonskontroll av kode og infrastruktur.

---

## Del 2
### Oppgave 3
1. Gå inn på "Settings" -> "Branches" -> "Add branch protection rule"  
3. Skriv "main" under "Branch name pattern"
4. Kryss av "Require a pull request before merging"
5. Kryss av "Require approvals"
6. Sett "Required number of approvals before merging" til "1"
7. Kryss av "Require status checks to pass before merging"
8. Søk etter og legg til "build" fra input-feltet under

## del 3
### Oppgave 1
1. Opprett Access Token på Dockerhub
2. Opprett secrets i github repoet:
    - DOCKER_HUB_USERNAME: brukernavn på dockerhub
    - DOCKER_HUB_TOKEN: token som nettopp ble opprettet (se pkt. 1)
Konklusjon: Workflowen feilet fordi den manglet secrets med login til dockerhub.

### Oppgave 3
1. Opprett et AWS ECR repository. 
2. I filen docker.yml: bytt ut "1030" med navnet på repositoriet du nettopp opprettet. 

## Del 5
### Oppgave 1
Jeg la til en backend S3 bucket for å lagre terraform-filene i. 
Når Terraform da skal kjøre så ser den over hva som allerede finnes, og gjør kun endringer fremfor å repetere hele prosessen.

Jeg er litt usikker på hvorfor, men jeg løste denne feilmeldingen:
```text
Error: creating Amazon S3 (Simple Storage) Bucket (analytics-1030): BucketAlreadyOwnedByYou: Your previous request to create the named bucket succeeded and you already own it.
```
ved å gjøre bucketen versjonert. Slik gjorde jeg det:
1. bytte ut aws_s3_bucket med aws_s3_bucket_versioning
2. Legge til 
```text
versioning_configuration {
   status = "Enabled"
}
```