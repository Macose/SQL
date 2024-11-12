
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Name" as "Track_Name", a."Title" as "Album_Title"
from "Track" t 
join "Album" a on t."AlbumId" = a."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select ar."Name" as "Artist_Name", al."Title" as "Album_Title"
from "Artist" ar
join "Album" al on ar."ArtistId" = al."ArtistId" 
order by ar."Name"

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select c."FirstName" || ' ' || c."LastName" as "Customer_Name", sum(i."Total") as "Total_Amount"
from "Customer" c 
join "Invoice" i on c."CustomerId" = i."CustomerId" 
group by c."CustomerId", "Customer_Name"
order by "Total_Amount" desc 
limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select e."FirstName" || ' ' || e."LastName" as "Employee_Name", c."FirstName" || ' ' || c."LastName" as "Customer_Name"
from "Employee" e 
join "Customer" c on e."EmployeeId" = c."SupportRepId" 
order by "Employee_Name";

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select i."InvoiceId", t."Name" as "Track_Name" 
from invoice_details ii
join invoices i on ii."InvoiceId" = i."InvoiceId"
join "Track" t on ii."TrackId" = t."TrackId" 
order  by i."InvoiceId";

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select ar."Name" as "Artist_Name", g."Name" as "Genre_Name"
from "Artist" ar
join "Album" al on ar."ArtistId" = al."ArtistId" 
join "Track" t on al."AlbumId" =t."AlbumId" 
join "Genre" g on t."GenreId" = g."GenreId" 
order by "Artist_Name";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select t."Name" as "Track_Name", mt."Name" as "MediaType" 
from "Track" t 
join "MediaType" mt on t."MediaTypeId" = mt."MediaTypeId" 
order by "Track_Name";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select t."Name" as "Track_Name", g."Name" as "Genre_Name"
from "Track" t 
left join "Genre" g on t."GenreId" = g."GenreId" 
order by "Track_Name";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select c."FirstName" || ' ' || c."LastName" as "Customer_Name", i."InvoiceId", i."Total" 
from "Customer" c 
left join "Invoice" i on c."CustomerId" = i."CustomerId" 
order by "Customer_Name";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
select al."Title" as "Album_Title", ar."Name" as "Artist_Name"
from "Album" al
left join "Artist" ar on al."ArtistId" = ar."ArtistId" 
order by "Album_Title"; 

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
select g."Name" as "Genre_Name", count(t."TrackId") as "Number_Of_Tracks" 
from "Genre" g 
join "Track" t on g."GenreId" =t."GenreId" 
group by g."Name" 
order by "Number_Of_Tracks" desc ;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select a."Title" as "Album_Title", sum(t."Milliseconds") as "Total_Duration" 
from "Album" a 
join "Track" t on a."AlbumId" = t."AlbumId" 
group by a."Title" 
order by a."Title" ;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select c."FirstName" || ' ' || c."LastName" as "Customer_Name", sum(i."Total") as "Total_Spent" 
from "Customer" c 
join "Invoice" i on c."CustomerId" = i."CustomerId" 
group by c."CustomerId", "Customer_Name"
order by "Total_Spent" desc ;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select e."FirstName" || ' ' || e."LastName" as "Employee_Name", c."FirstName" || ' ' || c."LastName" as "Customer_Name"
from "Employee" e 
left join "Customer" c on e."EmployeeId" =c."SupportRepId" 
order by "Employee_Name";




