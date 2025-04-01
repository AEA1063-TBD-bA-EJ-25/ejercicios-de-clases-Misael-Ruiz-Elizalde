use social
select * from Highschooler
--consulta amigos de gabriel
select * 
    from Friend F
    join Highschooler H1 on h1.ID = F. ID1
    join Highschooler H2 on h2.ID = F.ID2
    where name = 'Gabriel'

select *  from Highschooler h1
    join Friend f on h1.ID = F. ID1
    join Highschooler h2 on h2.ID = F.ID2
    where h1.name = 'Gabriel'

select h1.name, h2.name from Highschooler h1
    join Friend f on h1.ID = F. ID1
    join Highschooler h2 on h2.ID = F.ID2
    where h1.name = 'Gabriel'

--consulta de quien le gusta a quien
select * 
    from Highschooler h1
    join likes l on l.ID1 = h1.ID
    join Highschooler h2 on h2.ID = l.ID2
--consulta mismo grado
select * 
    from Highschooler h1
    join likes l on l.ID1 = h1.ID
    join Highschooler h2 on h2.ID = l.ID2
    where h1.grade = h2.grade
--consulta dos grados o menos
select * 
    from Highschooler h1
    join likes l on l.ID1 = h1.ID
    join Highschooler h2 on h2.ID = l.ID2
    where h1.grade-2 >=  h2.grade
--consulta hecha solo
select h1.name, h2.name from Highschooler h1
join Likes l on h1.ID = l.ID1
 join Highschooler h2 on h2.ID = l.ID2
    