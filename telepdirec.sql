-- 1)Find the network for a specific person

Select a .Network type from phone number a inner join person p on a .Person ID=p .Person ID
Where p .Person ID=‘AB0025’;

------------------------------------------------------------------------------------------------------

-- 2) Find the email address for a specific person

Select a. email _ address from email a where a.name=‘ Pujitha ’;

-----------------------------------------------------------------

-- 3)Find the address of specific email_address

Select address from person where person ID in(select Person ID from phone _ number
where ph noIn (select ph no from email where email _ address =‘pujitha@gmail.com’) );

---------------------------------------------------------------------------------------

-- 4)Find the count of network for Specfic Type

Select count(*) from phone _ number where network =‘airtel’;

-------------------------------------------------------------

-- 5)Find the phno of specific person ID

Select ph no from person where Person _ ID in(select Person _ ID from Phone _ number
where Person _ ID =‘KS2725’);

------------------------------------------------------------------------------------------- 

Create view person _ view as select p.name, p . person _id , p . Phone _ number , p .
address , pn . network _ type from person p join Phone _ number , address and network _
type;

--------------------------------------------------------------------------------------------

Create view Landline _ Numbers _ View as select name, person _id , phone _ number,
address from person _view where Network _ Type=‘landline’;

---------------------------------------------------------------------------------------

Create view Vijayawada _view as select name, person _ id , phone _ number , address from
person _ view where address like “%Vijayawada%”;

----------------------------------------------------------------------------------------------

Create view names _ view as select name ,person _ id, Phone _ number, address from
person _ view where name like ‘%A%’;

-------------------------------------------------------------------------------------

Create view num _ view as select name ,person _ id , phone _ number ,
address from person _ view where phone _ number like ‘%7%’;

-----------------------------------------------------