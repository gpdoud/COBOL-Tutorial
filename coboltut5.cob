       >> SOURCE FORMAT FREE
ID DIVISION.
    PROGRAM-ID. coboltut5.
    AUTHOR. Greg.
    DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
    FILE SECTION.
    WORKING-STORAGE SECTION.
        01 Num1     PIC 9 VALUE 5.
        01 Num2     PIC 9 VALUE 4.
        01 Sum1     PIC 99.

PROCEDURE DIVISION.
    *> Calling GetSum and passing three variables
    CALL "GETSUM" USING Num1, Num2, Sum1.
    DISPLAY Num1 " + " Num2 " = " Sum1.

    STOP RUN.
