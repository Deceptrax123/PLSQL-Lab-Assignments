DECLARE
    CURSOR emp_cursor IS
        select empno,sal,deptno from emp;
    
    e_empno emp.empno%type;
    e_sal emp.sal%type;
    e_deptno emp.deptno%type;

BEGIN 
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor into e_empno,e_sal,e_deptno;

        EXIT when emp_cursor%NOTFOUND;

        if(e_deptno=10) THEN
            e_sal:=e_sal+1000;
        if(e_deptno=20) THEN
            e_sal:=e_sal+1500;
        if(e_deptno=30) THEN
            e_sal:=e_sal+800;

        insert into temp values(e_empno,e_sal,e_sal);
    END LOOP;

    close emp_cursor;
END;
/