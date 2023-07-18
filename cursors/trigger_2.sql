CREATE OR REPLACE TRIGGER check_emp_count
BEFORE INSERT OR UPDATE  on emp

FOR EACH ROW
DECLARE
 dept_count number;

BEGIN
    if :new.deptno=2 THEN
        select count(*) into dept_count from emp where deptno=2;

        if dept_count>=5 THEN
            RAISE_APPLICATION_ERROR(-20002,'Number of employees in dept 2 cant exceed 5');
        end if;
    end if ;
end ;
/