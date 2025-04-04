CREATE DATABASE pizzeria
GO

use pizzeria
GO

create table [serves] (
[pizzeria] [nvarchar] (50),
[pizza] [nvarchar] (50),
[price] [money]);


insert [serves] ([pizzeria],[pizza],[price])
values 
( 'Pizza Hut','pepperoni',12.0000 ),
( 'Pizza Hut','sausage',12.0000 ),
( 'Pizza Hut','cheese',9.0000 ),
( 'Pizza Hut','supreme',12.0000 ),
( 'Little Caesars','pepperoni',10.0000 ),
( 'Little Caesars','sausage',10.0000 ),
( 'Little Caesars','cheese',7.0000 ),
( 'Little Caesars','mushroom',9.0000 ),
( 'Dominos','cheese',10.0000 ),
( 'Dominos','mushroom',11.0000 ),
( 'Straw Hat','pepperoni',8.0000 ),
( 'Straw Hat','cheese',9.0000 ),
( 'Straw Hat','sausage',10.0000 ),
( 'New York Pizza','pepperoni',8.0000 ),
( 'New York Pizza','cheese',7.0000 ),
( 'New York Pizza','supreme',9.0000 ),
( 'Chicago Pizza','cheese',8.0000 ),
( 'Chicago Pizza','supreme',9.0000);

create table [eats] (
[name] [nvarchar] (50),
[pizza] [nvarchar] (50));

insert [eats] ([name],[pizza])
values
( 'Amy','pepperoni' ),
( 'Amy','mushroom' ),
( 'Ben','pepperoni' ),
( 'Ben','cheese' ),
( 'Cal','supreme' ),
( 'Dan','pepperoni' ),
( 'Dan','cheese' ),
( 'Dan','sausage' ),
( 'Dan','supreme' ),
( 'Dan','mushroom' ),
( 'Eli','supreme' ),
( 'Eli','cheese' ),
( 'Fay','mushroom' ),
( 'Gus','mushroom' ),
( 'Gus','supreme' ),
( 'Gus','cheese' ),
( 'Hil','supreme' ),
( 'Hil','cheese' ),
( 'Ian','supreme' ),
( 'Ian','pepperoni');

create table [frequents] (
[name] [nvarchar] (50),
[pizzeria] [nvarchar] (50));


insert [frequents] ([name],[pizzeria])
values
( 'Amy','Pizza Hut' ),
( 'Ben','Pizza Hut' ),
( 'Ben','Chicago Pizza' ),
( 'Cal','Straw Hat' ),
( 'Cal','New York Pizza' ),
( 'Dan','Straw Hat' ),
( 'Dan','New York Pizza' ),
( 'Eli','Straw Hat' ),
( 'Eli','Chicago Pizza' ),
( 'Fay','Dominos' ),
( 'Fay','Little Caesars' ),
( 'Gus','Chicago Pizza' ),
( 'Gus','Pizza Hut' ),
( 'Hil','Dominos' ),
( 'Hil','Straw Hat' ),
( 'Hil','Pizza Hut' ),
( 'Ian','New York Pizza' ),
( 'Ian','Straw Hat' ),
( 'Ian','Dominos');

create table [person] (
[name] [nvarchar] (50),
[age] [tinyint],
[gender] [nvarchar] (50));


insert [person] ([name],[age],[gender])
values 
( 'Amy',16,'female' ),
( 'Ben',21,'male' ),
( 'Cal',33,'male' ),
( 'Dan',13,'male' ),
( 'Eli',45,'male' ),
( 'Fay',21,'female' ),
( 'Gus',24,'male' ),
( 'Hil',30,'female' ),
( 'Ian',18,'male');
