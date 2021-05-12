ALTER PROCEDURE "DBA"."insererVille"(IN codeP integer, IN nomVille VARCHAR(30))
begin
    call sa_set_http_header('Access-Control-Allow-Origin', '*'); 
    INSERT INTO tbVille
    VALUES
    (codeP, nomVille);
end