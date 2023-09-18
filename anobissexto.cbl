      ******************************************************************
      * Author: GABRIELA B
      * Date: 10/09/2023
      * Purpose: ANO BISSEXTO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION     DIVISION.
       PROGRAM-ID. ANO-BISSEXTO.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-ANO              PIC  9(4) VALUE ZEROS.
           01 WS-RESULT           PIC  9(1) VALUE ZEROS.
           01 WS-R1               PIC V9(3) VALUE ZEROS.
           01 WS-R2               PIC V9(3) VALUE ZEROS.
           01 WS-R3               PIC V9(3) VALUE ZEROS.
           PROCEDURE DIVISION.

           DISPLAY "INFORME UM ANO"
           ACCEPT WS-ANO

           IF FUNCTION MOD ( WS-ANO, 4 ) = 0
              AND FUNCTION MOD ( WS-ANO, 100 ) > 0
              OR FUNCTION MOD ( WS-ANO, 400 ) = 0
              THEN
              DISPLAY "ANO BISSEXTO"
           ELSE
              DISPLAY "ANO NAO EH BISSEXTO"
           END-IF

           STOP RUN.
       END PROGRAM ANO-BISSEXTO.
