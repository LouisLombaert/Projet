ALTER PROCEDURE "DBA"."recupererPersonnes"()
RESULT (id integer, prenom char(30), nom char(30), dateNaiss date, resultat char(10), expiration date)
begin
    call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select tbPersonnes.idPersonne, prenom, nom, dateNaiss, resultat, dateExp
    from tbPersonnes
    left join tbTest on tbPersonnes.idPersonne = tbTest.idPersonne
end
