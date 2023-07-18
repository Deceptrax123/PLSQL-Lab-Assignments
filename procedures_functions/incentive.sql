DECLARE
    incentive NUMBER;
    salary NUMBER;
    eid NUMBER;

BEGIN
    for emp in (select empid,salary from employe_2) LOOP
        salary:=emp.salary;
        eid:=emp.empid;

        incentive:=0.10*salary;

        DBMS_OUTPUT.PUT_LINE('Employee ID '||eid);
        DBMS_OUTPUT.PUT_LINE('Incentive '||incentive);

        dbms_output.put_line('---------');
    END LOOP;
END;
/