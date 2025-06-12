-- Query 01: Show 5 lowest prices, the store name and their address for comparison for bananas.

Select id.Price, s.Store_Name , sd.Address  from item_details id 
inner join item i
on   i.Item_ID = id.Item_ID
inner join store_details sd
on sd.Serial_Number = id.Store_Sr_Num
inner join store s 
on s.Store_ID = sd.Store_ID
where item_name ="Bananas"
order by id.Price
limit 5;

-- Query 02: Show 4 store names and addresses where the price for “Electric Scooters” which is in stock and is lowest. . 
Select id.Price, s.Store_Name , sd.Address  from item_details id 
inner join item i
on   i.Item_ID = id.Item_ID
inner join store_details sd
on sd.Serial_Number = id.Store_Sr_Num
inner join store s 
on s.Store_ID = sd.Store_ID
where item_name ="Electric Scooter" and Availability = "In Stock"
order by id.Price
limit 4;


-- Query 03: List Call ID ,Request ID, Description and Status of all the Request calls made for Target stores.
SELECT h.Call_id, h.request_id, h.RequestDescription, Request_Status FROM HelpDesk h
INNER JOIN Store_Details sd
ON sd.Serial_Number = h.Store_Sr_Num
INNER JOIN Store s
ON s.Store_ID = sd.Store_ID
WHERE s.Store_Name = "Target";

-- Query 04: List all the store names with addresses where store traffic is low in the Noon.
Select store_name,Address from store s
inner join store_details sd 
on s.Store_ID = sd.Store_ID
inner join storetraffic st
on st.Store_ID = s.Store_ID
where st.Time_period = "Noon" and st.Traffic ="Low";


-- Query 05: Show first 3 outlets near client with Client_id = “C5”


Select @c.lgt := Longitude, @c.lat := Lattitude from location l
inner join client c
on l.Location_ID = c.L_ID
where Client_ID = "C5";

select Store_Name, Address, round(sqrt((Longitude -@c.lgt)*(Longitude -@c.lgt)+ (Lattitude - @c.lat)*(Lattitude - @c.lat))*69,2) as distance_in_miles
from location l
inner join store_details sd
on sd.L_ID = l.Location_ID
inner join store s
on sd.Store_ID = s.Store_ID
order by distance_in_miles
limit 3;

-- Query 06: Show what is the average time each client spends searching for products on the application.

Select Client_ID, avg((EXTRACT(DAY_MINUTE FROM End_TimeStamp)-EXTRACT(DAY_MINUTE FROM Start_TimeStamp))/60) as Time 
from session 
group by Client_ID;


--  Query 07: show the nearest locations of 5 stores for the client with client name “John Doe”.
Select @c.lgt := Longitude, @c.lat := Lattitude from location l
inner join client c
on l.Location_ID = c.L_ID
where c.F_Name ="John" and c.L_Name ="Doe";

select Store_Name, Address, round(sqrt((Longitude -@c.lgt)*(Longitude -@c.lgt)+ (Lattitude - @c.lat)*(Lattitude - @c.lat))*69,2) as distance_in_miles
from location l
inner join store_details sd
on sd.L_ID = l.Location_ID
inner join store s
on sd.Store_ID = s.Store_ID
order by distance_in_miles
limit 5;

-- Query 08: Show the nearest store with Pharmacy for Client “C7”
Select @c.lgt := Longitude, @c.lat := Lattitude from location l
inner join client c
on l.Location_ID = c.L_ID
where c.Client_ID = "C7";

select Store_Name, Address, round(sqrt((Longitude -@c.lgt)*(Longitude -@c.lgt)+ (Lattitude - @c.lat)*(Lattitude - @c.lat))*69,2) as distance_in_miles
from location l
inner join store_details sd
on sd.L_ID = l.Location_ID
inner join store s
on sd.Store_ID = s.Store_ID
where Pharmacy = true
order by distance_in_miles
limit 1;