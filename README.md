# ITS Projekt 1

- **Autor:** Ondřej Jakub Chromý (xchromo00)
- **Datum:** 2025-04-10

## Matice pokrytí artefaktů

Čísla testů jednoznačně identifikují scénář v souborech `.feature`.

| Page                          | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 |
|-------------------------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| Page Appointment Date & Time  | x | x |   |   |   | x | x |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Page Customer Information     |   | x | x | x |   |   | x |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Page Appointment Confirmation |   |   |   | x | x |   | x |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Page Booking Confirmation     |   |   |   |   | x | x |   |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Page Customers                |   |   |   |   |   |   |   | x | x | x  | x  | x  | x  | x  | x  | x  | x  |    |    |    |    |    |    |    |    |    |    |    |
| Page Calendar                 |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  |


## Matice pokrytí aktivit

| Activities                                   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 |
|----------------------------                  |---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| Creating an appointment as unregistered user | x | x | x | x | x | x | x |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Adding customer                              |   |   |   |   |   |   |   | x | x | x  | x  |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Deleting customer                            |   |   |   |   |   |   |   |   |   |    |    | x  | x  |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| Editing customer information                 |   |   |   |   |   |   |   |   |   |    |    |    |    | x  | x  | x  |    |    |    |    |    |    |    |    |    |    |    |    |
| Editing appointment information              |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    | x  |    |    |    |    |    |    | x  | x  |    |    |    |
| Adding new appointment                       |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    | x  | x  | x  | x  |    |    |    |    |    |    |    |
| Viewing appointment information              |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |    | x  | x  |    |    |    |    |    |
| Deleting appointment                         |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    | x  | x  | x  |


## Matice Feature-Test

| Feature file                     | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 |
|----------------------------------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|
| unregistered_reservation.feature | x | x | x | x | x | x | x |   |   |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |
| managing_customers.feature       |   |   |   |   |   |   |   | x | x | x  | x  | x  | x  | x  | x  | x  | x  |    |    |    |    |    |    |    |    |    |    |    |
| managing_appointments.feature    |   |   |   |   |   |   |   |   |   |    |    |    |    |    |    |    |    | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  | x  |
