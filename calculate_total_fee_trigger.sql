CREATE OR REPLACE FUNCTION calculate_total_fee()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
    DECLARE weight INT;
BEGIN
    SELECT load.weight
    FROM load
    WHERE load.id = New.load_id
    INTO weight;

	IF weight <= 500 THEN
        New.fee = New.fee + 100;
	END IF;

    IF weight > 500 AND weight < 1000 THEN
        New.fee = New.fee + 500;
	END IF;

    IF weight >= 1000 THEN
        New.fee = New.fee + 1000;
	END IF;

	RETURN New;
END;
$$;

CREATE TRIGGER calculate_total_fee_trigger BEFORE INSERT OR UPDATE ON orders
    FOR EACH ROW
    WHEN (pg_trigger_depth() < 1)
    EXECUTE PROCEDURE calculate_total_fee();

INSERT INTO