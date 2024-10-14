       >> SOURCE FORMAT FREE
ID DIVISION.
       PROGRAM-ID. coboltut10.
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
    WORKING-STORAGE SECTION.
        01 WSCustomer.
            02 WSIDNum    PIC 9(5).
            02 WSCustName.
                03 WSFirstName PIC X(15).
                03 WSLastName PIC X(15).
        01 WSEOF PIC A(1).

PROCEDURE DIVISION.
    OPEN EXTEND CustomerFile.
    DISPLAY "IDNum " WITH NO ADVANCING.
    ACCEPT IDNum
    DISPLAY "FirstName " WITH NO ADVANCING.
    ACCEPT FirstName
    DISPLAY "LastName " WITH NO ADVANCING.
    ACCEPT LastName
    WRITE CustomerData
    END-WRITE.
    CLOSE CustomerFile.

    STOP RUN.
