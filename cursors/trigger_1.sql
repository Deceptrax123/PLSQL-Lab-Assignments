CREATE OR REPLACE TRIGGER check_salary
BEFORE UPDATE OF sal on emp
FOR EACH ROW
BEGIN 
    IF :NEW.sal<= :OLD.sal THEN
        RAISE_APPLICATION_ERROR(-20001,'Updated salary must be greated');
        END if
    END ;
/