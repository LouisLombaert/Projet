ALTER PROCEDURE "DBA"."insererTest"(personne integer, resultatTest char(3), datTst date, exp date)
BEGIN
    declare IDTest char(4);
    set IDTest = (
            select string('T' ,count(*) + 1)
            from tbTest
            );
    return IDTest;
    INSERT INTO tbTest
    (testId, idPersonne, resultat, dateTest, dateExp)
    VALUES 
    (IDTest, personne, resultatTest, dateTst, exp);
end
