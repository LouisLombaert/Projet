ALTER PROCEDURE "DBA"."Villes"()
RESULT (codePostal integer, ville varchar(30))
begin
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    SELECT*
    FROM tbVille
end