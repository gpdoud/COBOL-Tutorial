       >> SOURCE FORMAT FREE
ID DIVISION.
PROGRAM-ID. GETSUM.
AUTHOR. Greg.
DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
LINKAGE SECTION.
01 LNum1     PIC 9 VALUE 5.
01 LNum2     PIC 9 VALUE 4.
01 LSum1     PIC 99.

PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
COMPUTE LSum1 = LNum1 + LNum2.

EXIT PROGRAM.
