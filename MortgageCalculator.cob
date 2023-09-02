       IDENTIFICATION DIVISION.
       PROGRAM-ID. MORTGAGECALCULATOR.
       AUTHOR. Alexander Pavlotzky.
       DATE-WRITTEN. 27/08/2023.
       DATE-COMPILED. 28/08/2023.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LOANAMOUNT         PIC 9(8)V99.
       01 INTERESTRATE       PIC 9(3)V99.
       01 LOANTERMYEARS      PIC 9(3).
       01 MONTHLYPAYMENT     PIC 9(8)V99.
       01 TOTALINTERESTPAID  PIC 9(8)V99.
       PROCEDURE DIVISION.
           DISPLAY "Mortgage Calculator".
           DISPLAY "Enter Loan Amount: ".
           ACCEPT LOANAMOUNT.
           DISPLAY "Enter Interest Rate: ".
           ACCEPT INTERESTRATE.
           DISPLAY "Enter Loan Term (in years): ".
           ACCEPT LOANTERMYEARS.
            
           COMPUTE INTERESTRATE = INTERESTRATE / 100.
           COMPUTE MONTHLYPAYMENT = (LOANAMOUNT * (INTERESTRATE / 12))
              /(1 - (1 + INTERESTRATE / 12) ** (- LOANTERMYEARS * 12)).
           COMPUTE TOTALINTERESTPAID = (MONTHLYPAYMENT
              * LOANTERMYEARS * 12) - LOANAMOUNT.
            
           DISPLAY "Monthly Payment: $" MONTHLYPAYMENT.
           DISPLAY "Total Interest Paid: $" TOTALINTERESTPAID.
            
           STOP RUN.
           