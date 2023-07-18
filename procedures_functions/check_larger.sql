DECLARE
v_num1 integer;
v_num2 integer;
small integer;
large integer;

BEGIN
    v_num1:=&enter_num_1;
    v_num2:=&enter_num_2;

    IF v_num1<v_num2 THEN
        small:=v_num1;
        large :=v_num2;
    ELSE
        small:=v_num2;
        large:=v_num1;
    END IF;

    DBMS_OUTPUT.PUT_LINE('smaller value : '||small);
    DBMS_OUTPUT.PUT_LINE(larger value : '||large);

END;
/



