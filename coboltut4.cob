       >> SOURCE FORMAT FREE
ID DIVISION.
    PROGRAM-ID. coboltut4.
    AUTHOR. Greg.
    DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
    FILE SECTION.
    WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
    *> Gravity-driven Programming (runs top to bottom)
    SubOne.
        DISPLAY "In Paragraph 1"
        PERFORM SubTwo
        DISPLAY "Returned to Paragraph 1"
        PERFORM SubFour 2 TIMES.
        STOP RUN.

    SubThree.
        DISPLAY "In Paragraph 3".

    SubTwo.
        DISPLAY "In Paragraph 2"
        PERFORM SubThree
        DISPLAY "Returned to Paragraph 2".

    SubFour.
        DISPLAY "Repeat".

    STOP RUN.
