DECLARE
    v_deptid NUMBER;
    v_count NUMBER;
    v_vacancy NUMBER;

BEGIN
    for dept in (select deptid from department_2) LOOP
        v_deptid:=dept.deptid;
    
        select count(*) into v_count from employe_2 where deptid=v_deptid;

        v_vacancy:=45-v_count;

        DBMS_OUTPUT.PUT_LINE('Department ID: '||v_deptid);
        DBMS_OUTPUT.PUT_LINE('Number of employeed: '||v_count);

        if v_vacancy>0 THEN
            DBMS_OUTPUT.PUT_LINE('Vacancies Available : '||v_vacancy);
        ELSE
            DBMS_OUTPUT.PUT_LINE('No vacancies');
        END IF;


        DBMS_OUTPUT.PUT_LINE('--------');

    END LOOP;
END;
/