       >> SOURCE FORMAT FREE
ID DIVISION.
       PROGRAM-ID. coboltut11.
       AUTHOR. Greg.
       DATE-WRITTEN. OCTOBER 13, 2024.

ENVIRONMENT DIVISION.
    INPUT-OUTPUT SECTION.
    FILE-CONTROL.
        SELECT CustomerFile ASSIGN TO "Customer.dat"
            ORGANIZATION IS LINE SEQUENTIAL
            ACCESS IS SEQUENTIAL.


DATA DIVISION.
    FILE SECTION.
        FD CustomerFile.
        01 CustomerData.
            02 IDNum    PIC 9(5).
            02 CustName.
                03 FirstName PIC X(15).
                03 LastName PIC X(15).
            88 WSEOF VALUE HIGH-VALUE;
    WORKING-STORAGE SECTION.
        01 WSCustomer.
            02 WSIDNum    PIC 9(5).
            02 WSCustName.
                03 WSFirstName PIC X(15).
                03 WSLastName PIC X(15).

PROCEDURE DIVISION.
    OPEN INPUT CustomerFile.
    PERFORM UNTIL WSEOF = 'Y'
        READ CustomerFile INTO WSCustomer
            AT END MOVE 'Y' TO WSEOF
            NOT AT END DISPLAY WSCustomer
        END-READ
    END-PERFORM
    CLOSE CustomerFile.

    STOP RUN.
