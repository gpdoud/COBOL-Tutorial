       >> SOURCE FORMAT FREE
ID DIVISION.
    PROGRAM-ID. coboltut6.
    AUTHOR. Greg.
    DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
    FILE SECTION.
    WORKING-STORAGE SECTION.
        01 Idx PIC 9(1) VALUE 0.

PROCEDURE DIVISION.
    *> Similar to a While loop
    PERFORM OutputData WITH TEST AFTER UNTIL Idx > 5
        GO TO ForLoop.

    OutputData.
        DISPLAY Idx.
        ADD 1 to Idx.

    ForLoop.
        PERFORM OutputData2 VARYING Idx FROM 1 by 1 UNTIL Idx = 5
        STOP RUN.

    OutputData2.
        DISPLAY Idx.
