IDENTIFICATION DIVISION.
PROGRAM-ID. MortgageCalculator.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 LoanAmount           PIC 9(8)V99.
01 InterestRate         PIC 9(3)V99.
01 LoanTermYears        PIC 9(3).
01 MonthlyPayment       PIC 9(8)V99.
01 TotalInterestPaid    PIC 9(8)V99.
PROCEDURE DIVISION.
    DISPLAY "Mortgage Calculator".
    DISPLAY "Enter Loan Amount: ".
    ACCEPT LoanAmount.
    DISPLAY "Enter Interest Rate: ".
    ACCEPT InterestRate.
    DISPLAY "Enter Loan Term (in years): ".
    ACCEPT LoanTermYears.
    
    COMPUTE InterestRate = InterestRate / 100.
    COMPUTE MonthlyPayment = (LoanAmount * (InterestRate / 12)) / (1 - (1 + InterestRate / 12) ** (-LoanTermYears * 12)).
    COMPUTE TotalInterestPaid = (MonthlyPayment * LoanTermYears * 12) - LoanAmount.
    
    DISPLAY "Monthly Payment: $" MonthlyPayment.
    DISPLAY "Total Interest Paid: $" TotalInterestPaid.
    
    STOP RUN.
