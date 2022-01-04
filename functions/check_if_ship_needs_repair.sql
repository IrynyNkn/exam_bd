CREATE OR REPLACE FUNCTION check_if_ship_needs_repair (constructionDate INT, repairDate INT)
    RETURNS BOOLEAN
    LANGUAGE plpgsql
    AS
$$
    BEGIN
        IF repairDate IS NULL AND DATE_PART('year', CURRENT_DATE) - constructionDate >= 10 THEN
            RETURN FALSE;
        END IF;

        IF repairDate IS NULL AND DATE_PART('year', CURRENT_DATE) - constructionDate < 10 THEN
            RETURN TRUE;
        END IF;

        IF repairDate - constructionDate >= 10 THEN
            RETURN FALSE;
        END IF;

        IF repairDate - constructionDate < 10 THEN
            RETURN TRUE;
        END IF;
    END
$$;