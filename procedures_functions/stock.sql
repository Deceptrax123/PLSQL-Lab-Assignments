
create or replace  procedure updat_delete_item(
     p_item_code IN  NUMBER
)
AS
    last_purchase DATE;
BEGIN
    select dop into last_purchase from stock where code=p_item_code;

    if last_purchase<add_months(sysdate,-12) THEN
        delete from stock where code=p_item_code;
    else
        update stock set cstock=cstock+1 where code=p_item_code;
    END IF;
END;
/