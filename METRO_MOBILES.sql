-- 1. Show everything stored in the phones table.
use metro_mobiles;
show tables;
select*from phones;
-- 2. The owner has some changes. After each one, show the table to check the result:

-- • The price of the Redmi Note 12 is now 14999.00.
update phones set  price = 14999.00 where phone_id=2;
select*from phones;
-- • The stock of the Vivo Y28 is now 20.
update phones set stock =20 where phone_id=4;

-- • The Oppo A58 has a new price of 13999.00 and new stock of 15. Change both in one command.
update phones set price=13999.00,stock=15 where phone_id=5;
select*from phones;
-- • Increase the price of every phone by 500.
update phones set price = price+500;
set sql_safe_updates=0;
select*from phones;
-- 3. The Vivo Y28 has been discontinued. Remove it from the table and show the table.
delete from phones where model='Y28';
select*from phones;
-- 4. The shop has stopped selling Oppo phones. Remove all Oppo phones and show the table.
DELETE FROM PHONES WHERE BRAND='OPPO';
select*from phones;
-- 5. Remove all rows from old_stock in a way that is fast and keeps the table. Show the table and check its structure to confirm it still exists.
SELECT*FROM OLD_STOCK;
TRUNCATE OLD_STOCK;
-- 6. Remove all rows from temp_list in a way that would also let you choose which rows to remove. Show the table and check its structure.
SELECT*FROM TEMP_LIST;
delete FROM TEMP_LIST;
-- 7. Remove the temp_list table completely. Then try to show its data and write down the error you get.
DROP TABLE  TEMP_LIST;
-- 8. At the end of your file, write one line each as comments on how DELETE, TRUNCATE and DROP are different.
-- DELETE : WE CAN SHOOSE WHICH ROW TO DELETE
-- TRUNCATE : KEEP STRUCTURE AND DELETE DATA
-- DROP : DELETE ENTIRE STRUCTURE.