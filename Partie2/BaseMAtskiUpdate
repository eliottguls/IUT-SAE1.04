-- changer les categories et article --> codetype à enlever de la class article
-- Un contact est spécifique à un client id par un numerodecontact numcontact= type serial pour eviter les cases vides --> on a au moins un contact à chaque fois/
-- Pour les homonymes de contact on va dire que peu importe car on va demander un cintact à partir du clien
-- conctact est une composition, le contact est un composant du client
-- type serial sur numarticle dans article
-- where nomcontact2 is not null (pour ajouter le contact si le nom de contact est pas nul
-- faire une view pour exploiter les données de commande sur la validitté de la livraison(voir td6 sur les vues)

-- pour insérer des données dans matski_update on utilise : (exemple avec typearticle


/* 
=========================================
=        Update de la BDD matski        =
=========================================
*/
drop schema if exists matski_update cascade;
create schema matski_update;
set schema 'matski_update';



/****************************************
*         Table : _TYPEARTICLE          *
****************************************/
create table _TYPEARTICLE(
  codetype      CHAR(1)     not null,
  libelletype   VARCHAR(40) not null,
  constraint PK_TYPEARTICLE primary key (codetype)
);

insert into matski_update._TYPEARTICLE(codetype,libelletype)
  select codetype, libelletype
  from matski.typearticle;

/****************************************
*           Table : _ARTICLE            *
****************************************/
create table _ARTICLE(
  numarticle        SERIAL        not null,
  nomarticle        CHAR(20)      not null,
  referenceinterne  CHAR(10)      not null,
  codebarre         CHAR(13)      not null,
  codetype          CHAR(1)       not null,
  coutachat         NUMERIC(10,2) not null,
  prixVente         NUMERIC(10,2) not null,
  constraint PK_ARTICLE primary key (numarticle)
);


ALTER TABLE _ARTICLE
  ADD CONSTRAINT fk_article_estlie_typearti FOREIGN KEY (codetype)
  REFERENCES matski.TYPEARTICLE (codetype);

insert into matski_update._ARTICLE(numarticle, nomarticle, referenceinterne,codebarre,coutachat)
  select numarticle,nomarticle,referenceinterne,codebarre,coutachat
  from matski.article;
  
  


  

select setval('matski_update._article_numarticle_seq',
               (select max(numarticle)
               from matski_update._article)
               );
               /*
a ajouter quand on aura mis serial dans la classe article pour numarticle */
