
create or replace procedure search(
    v_phoneno IN NUMBER
)
AS
    v_address VARCHAR2(30);
BEGIN
    select address into v_address from details where phone_no=v_phoneno;

    dbms_output.put_line('Address: '||v_address);

END;
/