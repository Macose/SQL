
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
SELECT	MIN("Milliseconds") AS "Min_Duration"
from "Track" t;

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
SELECT	max("Milliseconds") AS "Max_Duration"
from "Track" t;

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
SELECT	MIN("UnitPrice") AS "Min_Piece"
from "Track" t;  

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
SELECT	MAX("UnitPrice") AS "Max_Piece"
from "Track" t;     

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
SELECT	MIN("InvoiceDate") AS "Min_Invoice_Date"
from "Invoice" i ; 

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
SELECT	MAX("InvoiceDate") AS "Max_Invoice_Date"
from "Invoice" i ; 

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select count(*) as "Total_Tracks"
from "Track" t ;

-- Ejercicio 8: Contar el número de clientes en Brasil.
select count(*) as "Total_Customers_Brazil"
from "Customer" c 
where "Country" = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select SUM("Milliseconds") as "Total_Duration"
from "Track" t ;

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select count(*) as "Total_Sales_Support_Agents"
from "Employee" e 
where "Title" = ' Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select sum("Total") as "Total_Invoices"
from "Invoice" i ;

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select avg("Milliseconds") as "Avg_Duration"
from "Track" t ;

-- Ejercicio 13: Calcular el precio medio de las pistas.
select avg("UnitPrice") as "Avg_Price"
from "Track" t ;

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select stddev("Milliseconds") as "Stddev_Duration"
from "Track" t ;

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select variance("Milliseconds") as "Variance_Duration"
from "Track" t ;

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select stddev("UnitPrice") as "Stddev_Price"
from "Track" t ; 

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName", ' ', "LastName") as "Full_Name"
from "Customer" c 

