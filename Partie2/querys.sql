set schema 'matski';


/* Requ�te 1 */
SELECT *
from article
EXCEPT
select article.*
from detailcommande NATURAL JOIN article;

/* Requ�te 2 */
select *
from client
except
select client.*
from client natural join commande;

/* Requ�te 3 */
select distinct *
from detailcommande natural join commande
where quantitecommandee > quantitelivree;

/* Requ�te 4 */
select codetypetva, sum(montantttc) as montant_total
from commande natural join client 
              natural join etiquette
group by codetypetva;   








/** Sur la 2) tous les articles on garde pas les catégoies d'au dessus
calculer l'ensemble sui ont été directement ajouté et on les reutilise pour obtenir les autres cat d'au dessus**/
