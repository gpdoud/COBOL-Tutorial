       >> SOURCE FORMAT FREE
ID DIVISION.
    PROGRAM-ID. coboltut2.
    AUTHOR. Greg.
    DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.

DATA DIVISION.
    FILE SECTION.
    WORKING-STORAGE SECTION.
        01 SampleData PIC X(10) VALUE "Stuff".
        01 JustLetters PIC AAA VALUE "ABC".
        01 JustNumbs PIC 9(4) VALUE 1234.
        01 SignedInt PIC S9(4) VALUE -1234.
        01 PayCheck PIC 9(4)V99 VALUE ZEROS.
        01 Customer.
            02 Ident        PIC 9(3).
            02 CustName     PIC X(20).
            02 DateOfBirth.
                03 MOB  PIC 99.
                03 DOB  PIC 99.
                03 YOB  PIC 9(4).
        01 Num1 PIC 9 VALUE 5.
        01 Num2 PIC 9 VALUE 4.
        01 Num3 PIC 9 VALUE 3.
        01 Ans  PIC S99V99 VALUE 0.
        01 Rem  PIC 9V99.

PROCEDURE DIVISION.
        MOVE "Move Stuff" to SampleData
        MOVE "123" to SampleData
        MOVE 123 TO SampleData
        DISPLAY SampleData
        DISPLAY PayCheck
        MOVE "123Bob Smith           10132024" TO Customer
        DISPLAY CustName
        DISPLAY MOB "/" DOB "/" YOB

        MOVE ZERO TO SampleData
        DISPLAY SampleData
        MOVE SPACE TO SampleData
        DISPLAY SampleData
        MOVE HIGH-VALUE TO SampleData
        DISPLAY SampleData
        MOVE LOW-VALUE TO SampleData
        DISPLAY SampleData
        MOVE QUOTE TO SampleData
        DISPLAY SampleData
        MOVE ALL "2" TO SampleData
        DISPLAY SampleData

        DISPLAY "Num1: " Num1 ", Num2: " Num2
        ADD Num1 TO Num2 GIVING Ans
        DISPLAY Ans
        SUBTRACT Num1 FROM Num2 GIVING Ans
        DISPLAY Ans
        MULTIPLY Num1 BY Num2 GIVING Ans
        DISPLAY Ans
        DIVIDE Num1 INTO Num2 GIVING Ans
        DISPLAY Ans
        DIVIDE Num1 INTO Num2 GIVING Ans REMAINDER Rem
        DISPLAY Ans
        DISPLAY "REMANDER " Rem

        ADD Num1, Num2 TO Num3 GIVING Ans
        DISPLAY Ans.
        ADD Num1, Num2, Num3 GIVING Ans
        DISPLAY Ans.
        COMPUTE ANS = Num1 + Num2
        DISPLAY Ans.
        COMPUTE ANS = Num1 - Num2
        DISPLAY Ans.
        COMPUTE ANS = Num1 * Num2
        DISPLAY Ans.
        COMPUTE ANS = Num1 / Num2
        DISPLAY Ans.
        COMPUTE ANS = Num1 ** Num2
        DISPLAY Ans.
        COMPUTE ANS = (3 + 5) * 5
        DISPLAY Ans.
        COMPUTE ANS = 3 + 5 * 5
        DISPLAY Ans.
        COMPUTE ANS ROUNDED = 3.0 + 2.005
        DISPLAY Ans.

        STOP RUN.
