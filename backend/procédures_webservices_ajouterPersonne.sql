ALTER PROCEDURE "DBA"."ajouterPersonne"(NomPersonne varchar(30), PrenomPersonne varchar(30), dateNaissance date, sexePersonne char)
begin
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    INSERT INTO tbPersonnes 
    (nom, prenom, dateNaiss, sexe)
    VALUES 
    (NomPersonne, PrenomPersonne, dateNaissance, sexePersonne);
end
