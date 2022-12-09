# eksamen-devops

## Del 1 DevOps-prinsipper

---
Q: Hva er utfordringene med dagens systemutviklingsprosess -
og hvordan vil innføring av DevOps kunne være med på å løse disse?
Hvilke DevOps prinsipper blir brutt?

A:

---
Q: En vanlig respons på mange feil under release av ny funksjonalitet er å gjøre det mindre hyppig,
og samtidig forsøke å legge på mer kontroll og QA. Hva er problemet med dette ut ifra et DevOps perspektiv, og hva kan
være en bedre tilnærming?

A:

---
Q: Teamet overleverer kode til en annen avdelng som har ansvar for drift - hva er utfordringen med dette ut ifra et
DevOps perspektiv,
og hvilke gevinster kan man få ved at team han ansvar for både drift- og utvikling?

A:

---
Q: Å release kode ofte kan også by på utfordringer. Beskriv hvilke- og hvordan vi kan bruke DevOps prinsipper til å
redusere eller fjerne risiko ved hyppige leveraner.

A:

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
    - DOCKER_HUB_TOKEN: token som nettopp ble opprettet
Konklusjon: Workflowen feilet fordi den manglet secrets med login til dockerhub.

### Oppgave 3
1. Opprett et AWS ECR repository. 
2. I filen docker.yml: bytt ut "1030" med navnet på repositoriet du nettopp opprettet. 

## Del 5
### Oppgave 1
Fordi ikke noe er definert??
