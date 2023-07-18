CREATE OR REPLACE TRIGGER negative_balance_trigger
AFTER UPDATE of balance on account_21bai1394
FOR EACH ROW
DECLARE
    loan_no loan_21bai1394.loan_no%type;
BEGIN
    if:new.balance<0 THEN
         insert into loan_21bai1394 (loan_no,br_name,amount) values 
         (:new.acctno,:new.br_name,-1*:new.balance);

         insert into borrower (custname,loan_no) values
         ('Jones',:new.acctno);

         update account_21bai1394 set balance=0
         where acctno=:new.acctno;

    end if;
end;
/