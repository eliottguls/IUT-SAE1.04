# Critiques : 
## Non remplissage de certaines valeurs des attributs
- Le tableau suivante répertorie les attributs ou ses valeurs peuvent être "null" :

||typearticle|tarifvente|listeprix|detailcommande|commande|client|categorie|article|
|---       |---        |---                  |---      |---|---|---|---|---|
|NULLABLE  |libelletype|prixvente            |libelleetiquette,codetypetva|quantitecommandee,quantitelivree|datecommande,montantfrais,montantht,montantttc|nomclient,adresserueclient,adressecodepostalclient,adressevilleclient,adressepaysclient,telephoneclient, mailclient, nomcontact1, telephonecontact1, fonction contact1,nomcontact2,telephonecontact2,fonctioncontatc2|cat_numcategorie,libellecategorie|nomarticle,referenceinterne,codebarre,prixvente,coutachat|
|!NULLAB |codetype   |codeliste, numarticle|codeetiquette|numcommande,numarticle|numcommande,numclient|codeliste,codeetiquette,numclient|numcategorie|numarticle,numcategorie,codetype|





## Ajout d'un attribut dans detailcommande : 
- un booléen ou une string qui vérifie si la livraison s'est bien passée ( si quantitecommandee = quantitelivree ou > ou < )<br>
    pour le string on peut avoir 3 strings différents :
    - OK
    - Trop peu
    - Surplus





