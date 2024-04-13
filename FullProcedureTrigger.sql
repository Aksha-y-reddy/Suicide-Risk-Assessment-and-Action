CREATE TRIGGER trg_AfterInsertFilterYouthJoin
ON ResponseTable
AFTER INSERT
AS
BEGIN
    EXEC FilterYouthJoin;
    
    -- Ensure transaction commits if FilterYouthJoin is transactional
    COMMIT TRANSACTION;

    -- Start new transaction for the next procedure
    BEGIN TRANSACTION;
    EXEC GenerateLikelihoodRatios;

        DELETE FROM LikelihoodRatios
        WHERE EXISTS (
            SELECT 1
            FROM ResponseTable rt
            WHERE rt.AttributeCode = LikelihoodRatios.AttributeCode
        );

    COMMIT TRANSACTION;
END;
GO