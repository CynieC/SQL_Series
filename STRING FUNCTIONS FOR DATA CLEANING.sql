
USE AdventureWorks2019


--Extract area code from Address Line
select LEFT(AddressLine1,5) as area_code
from person.Address

--Extract area name from Address Line
SELECT RIGHT(addressLine1,20) as area_name
FROM person.address


--Get a list of people whose password is less that 8 characters
SELECT concat(pp.firstname,' ',pp.lastname) as Name,Title,Demographics,p.PasswordSalt,pp.persontype
FROM person.Password p
LEFT JOIN person.person pp on trim(upper(p.BusinessEntityID))=trim(upper(pp.BusinessEntityID))
where len(p.passwordsalt)>=8


