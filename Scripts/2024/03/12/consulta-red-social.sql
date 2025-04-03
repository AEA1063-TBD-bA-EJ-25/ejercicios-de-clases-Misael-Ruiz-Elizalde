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
join Likes l2 on h1.ID = l.ID2
join Highschooler h2 on l2.ID1 = l.ID1
    where l.ID2 = l2.ID1

--consultas estudiantes que se gustan mutuamente
select * from likes l1 
    join likes l2 on l1.ID2 = l2.ID1
    where l1.id1 = l2.ID2

-- consultas con los nombres *profesor*
select * from likes l1 
    join likes l2 on l1.ID2 = l2.ID1
    join Highschooler h on h.id = l1.ID1
    join Highschooler h2 on h2.ID = l2.ID2
    where l1.id1 = l2.ID2
        and l1.id1 < l1.id2
--consulta hecha solo 
select *
    from Highschooler h1
    join likes l on h1.ID = l.ID1
    join Highschooler h2 on h2.ID = l.ID2
    join likes l2 on l.ID2 = l2.ID1
    where l.id1 = l2.ID2

select h1.name, h2.name, h1.grade, h2.grade
    from Highschooler h1
    join likes l on h1.ID = l.ID1
    join Highschooler h2 on h2.ID = l.ID2
    join likes l2 on l.ID2 = l2.ID1
    where l.id1 = l2.ID2 
        and l.id1 < l.id2

--4 situacion{ triangulo amoroso} 
select h1.name, h2.name, h1.grade, h2.grade
    from Highschooler h1
    join likes l on h1.ID = l.ID1
    join Highschooler h2 on h2.ID = l.ID2
    join likes l2 on l.ID2 = l2.ID1
    where l.id1 != l2.ID2 --solo muestra los que quedan volando
        --and l.id1 < l.id2

    select h1.name, h1.grade
    from Highschooler h1
    join likes l1 on l1.ID1 = h1.ID
    inner join likes l2 on l1.ID2 = l2.id1
    where l1.ID1 <> l2.ID2 