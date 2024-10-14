       >> SOURCE FORMAT FREE
ID DIVISION.
       PROGRAM-ID. coboltut8.
       AUTHOR. Greg.
       DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
    FILE SECTION.
    WORKING-STORAGE SECTION.
       01 Price PIC 9(4)V99.
       01 TaxRate PIC V999 VALUE .075.
       01 FullPrice PIC 9(4)V99.

PROCEDURE DIVISION.
    *> Uses Fixed-point numbers
    DISPLAY "Enter the price: " WITH NO ADVANCING.
    ACCEPT Price.
    COMPUTE FullPrice ROUNDED = Price + (Price * TaxRate).
    DISPLAY "Price + Tax : " FullPrice.

    STOP RUN.
