DECLARE
    CURSOR emp_cursor IS
         select ename,sal from emp 
         where sal<(select avg(sal) from emp);
    emp_name emp.ename%type;
    emp_salary emp.sal%type;

BEGIN
    open emp_cursor;

    LOOP
        FETCH emp_cursor into emp_name,emp_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name : '||emp_name ||',Salary: '||emp_salary);

    END LOOP;
    close emp_cursor;

END;
/