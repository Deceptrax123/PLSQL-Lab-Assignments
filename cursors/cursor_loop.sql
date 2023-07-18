DECLARE
    CURSOR emp_cursor IS
        select empno,ename,job from emp where deptno=10;
    
    e_empno emp.empno%type;
    e_ename emp.ename%type;
    e_job emp.job%type;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO e_empno,e_ename,e_job;

        EXIT when emp_cursor%NOTFOUND;

        dbms_output.put_line('Empno: '||e_empno||',Ename: '||e_ename ||',Job: '||e_job);

    END LOOP;

    CLOSE emp_cursor;
END;
/