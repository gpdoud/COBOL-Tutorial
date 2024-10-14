       >> SOURCE FORMAT FREE
ID DIVISION.
       PROGRAM-ID. coboltut17.
       AUTHOR. Greg.
       DATE-WRITTEN. OCTOBER 14, 2024.

ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
              SELECT WorkFile ASSIGN TO 'work.tmp'.
              SELECT Stud1 ASSIGN TO 'student.dat'
                  ORGANIZATION IS LINE SEQUENTIAL.
              SELECT Stud2 ASSIGN TO 'student2.dat'
                  ORGANIZATION IS LINE SEQUENTIAL.
              SELECT MergedFile ASSIGN TO 'student_merged.dat'
                  ORGANIZATION IS LINE SEQUENTIAL.
       
DATA DIVISION.
    FILE SECTION.
       FD Stud1.
       01 StudData.
           02 IDNum PIC 9.
           02 StudName PIC X(10).
       FD Stud2.
       01 StudData2.
           02 IDNum2 PIC 9.
           02 StudName2 PIC X(10).
       SD WorkFile.
       01 WStudData.
           02 WIDNum PIC 9.
           02 WStudName PIC X(10).
       FD MergedFile.
       01 MStudData.
           02 MIDNum PIC 9.
           02 MStudName PIC X(10).

    WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
       MERGE WorkFile ON ASCENDING KEY MIDNum
           USING Stud1, Stud2
           GIVING MergedFile
       STOP RUN.
