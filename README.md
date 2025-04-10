# ITS Projekt 1

- **Autor:** Ondřej Jakub Chromý (xchromo00)
- **Datum:** 2025-04-10

## Matice pokrytí artefaktů

Čísla testů jednoznačně identifikují scénář v souborech `.feature`.

| Page | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 |
|------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| Page XYZ1 | x | x |   |     |
| Page XYZ2 | x |   | x |     |
| Page ... |   |   | x |  x   |


## Matice pokrytí aktivit

| Activities | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 |
|------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| Setting quantity of A to N | x |  | x | |
| Putting XYZ to cart | x |  | x | |
| Frenzy clicking ... | | | | x |
| Checking out | x |  |  |  x  |
| Cancelling ABCD |   | x | x |    |
| Registering ... | x | x | x |    |
| Removing ... | | | | x |


## Matice Feature-Test

| Feature file                     | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 |
|----------------------------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| unregistered_reservation.feature | x | x | x | x | x | x | x |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| managing_customers.feature       |   |   |   |   |   |   |   | x | x | x  | x  | x  | x  | x  | x  | x  | x  |    |    |    |    |    |    |    |    |    |    |    |
| managing_appointments.feature    |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  |
