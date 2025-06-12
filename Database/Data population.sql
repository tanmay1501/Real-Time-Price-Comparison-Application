-- Insert data into the Location table
INSERT INTO Location (Location_ID, Zip_Code, Lattitude, Longitude)
VALUES
	('L1', 75081,33.03364483352096, -96.82584643629059),
    ('L2', 75075, 33.042373925337245, -96.70668683794484),
    ('L3', 75093,33.024730807286716, -96.83334374762822),
    ('L4', 75080, 33.005155199794544, -96.72976548890776),
    ('L5', 75075,33.00507343837356, -96.7699564772466),
    ('L6', 75075, 33.0109674833112, -96.77027720334245),
    ('L7', 75074,33.04487011039476, -96.700020437452),
    ('L8', 75080, 32.965070896271, -96.7506748041237),
    ('L9', 75024,33.08153351525038, -96.76487152697649),
    ('L10', 75074, 33.06025736953061, -96.69276405946044),
    ('L11', 75023,33.06180008766675, -96.70345630413705),
    ('L12', 75080, 33.08153351525038, -96.76487152697649),
    ('L13', 75080,32.99350830023068, -96.75016125806196),
    ('L14', 75080, 32.99351378578118, -96.7486700722981),
    ('L15', 75080,32.99372223645754, -96.74747319958543),
    ('L16', 75080, 32.99486322087502, -96.74976884074007),
    ('L17', 75252,32.99913178223901, -96.77243000436805),
    ('L18', 75080, 32.982357671675004, -96.76284434742736),
    ('L19', 75252,32.998438918833, -96.77555303733077),
    ('L21', 75080,32.99842504547647, -96.73359790514527),
    ('L22', 75080, 33.001401432248144, -96.73220680514513);


-- Insert data into the Client table
INSERT INTO Client (Client_ID, F_Name, L_Name, Email, Contact, L_ID)
VALUES
('C1', 'John', 'Doe', 'john.doe@email.com', 1234567890,'L13' ),
('C2', 'Jane', 'Smith', 'jane.smith@email.com', 9876543210,'L14'),
('C3', 'Mike', 'Johnson', 'mike.johnson@email.com', 5551234567,'L15'),
('C4', 'Emily', 'Williams', 'emily.williams@email.com', 7890123456,'L16'),
('C5', 'David', 'Jones', 'david.jones@email.com', 2345678901, 'L17'),
('C6', 'Sarah', 'Brown', 'sarah.brown@email.com', 8765432109,'L18'),
('C7', 'Chris', 'Miller', 'chris.miller@email.com', 3210987654, 'L19'),
('C8', 'Amanda', 'Clark', 'amanda.clark@email.com', 6543210987,null),
('C9', 'Brian', 'Taylor', 'brian.taylor@email.com', 9876543210,'L21'),
('C10', 'Linda', 'Martin', 'linda.martin@email.com', 1234567890,'L22');

-- Insert data into the Session table
INSERT INTO Session (Client_ID, Start_TimeStamp, End_TimeStamp)
VALUES
    ('C1', '2023-11-21 10:00:00', '2023-11-21 12:00:00'),
    ('C2', '2023-11-21 14:00:00', '2023-11-21 16:00:00'),
     ('C3', '2023-11-21 10:00:00', '2023-11-21 12:30:00'),
    ('C4', '2023-11-21 14:00:00', '2023-11-21 15:30:00'),
    ('C5', '2023-11-22 09:30:00', '2023-11-22 11:30:00'),
    ('C6', '2023-11-22 13:45:00', '2023-11-22 15:45:00'),
    ('C7', '2023-11-23 11:00:00', '2023-11-23 13:00:00'),
    ('C8', '2023-11-23 15:00:00', '2023-11-23 17:30:00'),
    ('C9', '2023-11-24 12:15:00', '2023-11-24 14:15:00'),
    ('C10', '2023-11-24 16:45:00', '2023-11-24 19:45:00'),
    ('C2', '2023-11-25 10:30:00', '2023-11-25 12:30:00'),
    ('C6', '2023-11-25 14:00:00', '2023-11-25 16:00:00'),
    ('C8', '2023-11-26 11:30:00', '2023-11-26 12:30:00'),
    ('C8', '2023-11-26 14:45:00', '2023-11-26 16:45:00'),
    ('C9', '2023-11-27 10:00:00', '2023-11-27 12:00:00'),
    ('C1', '2023-11-27 13:15:00', '2023-11-27 15:15:00'),
    ('C4', '2023-11-28 12:45:00', '2023-11-28 14:45:00');
 
 -- Insert data into the Store table
    INSERT INTO Store (Store_ID, Store_Name, Store_Timings)
VALUES

    ('S1', 'Target',' 7:00 AM - 10:00 PM '),
    ('S2', 'Costco',  '10:00 AM -  8:30 PM '),
    ('S3', 'Tom Thumb',' 6:00 AM - 11:00 PM '),
    ('S4', 'Sams Club', '10:00 AM - 8:00 PM '),
    ('S5', 'Walmart', ' 6:00 AM - 11:00 PM '),
    ('S6', 'Patel Brothers','10:30 AM - 9:00 PM '),
    ('S7', 'India Bazaar', '9:00 AM - 9:00 PM '),
    ('S8', 'Desi Brothers', '10:00 AM - 9:00 PM ');
-- Insert data into the Store_Details table
INSERT INTO Store_Details (Serial_Number, Store_ID,  Pharmacy, Gas_Station , Address, L_ID )
VALUES

    ('S1L1','S1', True , True,'601 S Plano Rd, Richardson, TX', 'L1'), 
    ('S1L2' ,'S1',True , False, '16731 Coit Rd, Dallas, TX', 'L2'),
    ('S2L3','S2',True , True ,  '3800 N Central Expy, Plano, TX', 'L3'),
    ('S3L4','S3',True , False, '3411 Custer Pkwy, Richardson, TX','L4'),
    ('S4L5','S4', False ,True, '301 Coit Rd, Plano, TX', 'L5'),
    ('S5L6','S5', True , False,'425 Coit Rd, Plano, TX', 'L6'),
    ('S2L7','S2', True , True,'8055 Churchill Way, Dallas, TX',  'L7'),
    ('S3L8','S3', True , False,'1380 W Campbell Rd, Richardson, TX', 'L8'),
    ('S6L9','S6', False , False,'6205 Coit Rd STE 201, Plano, TX','L9'),
    ('S4L10','S4', False , True,'1200 E Spring Creek Pkwy, Plano','L10'),
    ('S7L11','S7', False , False, '1425 E Belt Line Rd, Richardson, TX', 'L11'),
    ('S8L12','S8', False , False,'100 S Central Expy Suite 26C, Richardson, TX', 'L12');

-- Insert data into the Item table
INSERT INTO Item (Item_ID,Item_Name)
VALUES
('I1', 'Tomato'),
('I2', 'Onions'),
('I3', 'Electric Scooter'),
('I4', 'Bananas'),
('I5', 'Milk'),
('I6', 'Tide Detergent'),
('I7', 'Toilet Paper');


-- Insert data into the Item_Details table
INSERT INTO Item_details (Item_ID, Hyperlink, Price, Descriptions, Store_Sr_Num, Availability, Item_Location)
VALUES
    ('I1', 'www.example.com/product1', 2.29, 'Red Roma 1lb', 'S1L1', 'In Stock', 'Aisle 1'),
    ('I1', 'www.example.com/product2', 2.39, 'Red Roma 1lb', 'S1L2', 'Out of Stock', 'Aisle 2'),
    ('I1', 'www.example.com/product3', 3.99, 'Red Roma 1lb', 'S2L3', 'In Stock', 'Aisle 3'),
    ('I1', 'www.example.com/product4', 4.99, 'Red Roma 1lb', 'S3L4', 'In Stock', 'Aisle 4'),
    ('I1', 'www.example.com/product5', 2.99, 'Red Roma 1lb', 'S4L5', 'Out of Stock', 'Aisle 5'),
    ('I1', 'www.example.com/product6', 1.99, 'Red Roma 1lb', 'S5L6', 'In Stock', 'Aisle 6'),
    ('I1', 'www.example.com/product7', 3.69, 'Red Roma 1lb', 'S2L7', 'In Stock', 'Aisle 7'),
    ('I1', 'www.example.com/product8', 5.99, 'Red Roma 1lb', 'S3L8', 'Out of Stock', 'Aisle 8'),
    ('I1', 'www.example.com/product9', 3.89, 'Red Roma 1lb', 'S6L9', 'In Stock', 'Aisle 9'),
    ('I2', 'www.example.com/product1', 2.29, 'White 1lb', 'S1L1', 'In Stock', 'Aisle 2'),
    ('I2', 'www.example.com/product2', 2.39, 'White 1lb', 'S1L2', 'Out of Stock', 'Aisle 4'),
    ('I2', 'www.example.com/product3', 3.99, 'White 1lb', 'S2L3', 'In Stock', 'Aisle 1'),
    ('I2', 'www.example.com/product4', 4.99, 'White 1lb', 'S3L4', 'In Stock', 'Aisle 3'),
    ('I2', 'www.example.com/product5', 2.99, 'White 1lb', 'S4L5', 'Out of Stock', 'Aisle 2'),
    ('I2', 'www.example.com/product6', 1.99, 'White 1lb', 'S5L6', 'In Stock', 'Aisle 5'),
    ('I2', 'www.example.com/product7', 3.69, 'White 1lb', 'S2L7', 'In Stock', 'Aisle 4'),
    ('I2', 'www.example.com/product8', 5.99, 'White 1lb', 'S3L8', 'Out of Stock', 'Aisle 2'),
    ('I2', 'www.example.com/product9', 3.89, 'White 1lb', 'S6L9', 'In Stock', 'Aisle 1'),
    ('I2', 'www.example.com/product10', 2.49, 'White 1lb', 'S4L10', 'In Stock', 'Aisle 10'),
    ('I3', 'www.example.com/product1', 300, 'Electric Scooter', 'S1L1', 'Out of Stock', 'Aisle 1'),
    ('I3', 'www.example.com/product2', 350, 'Electric Scooter', 'S1L2', 'Out of Stock', 'Aisle 2'),
    ('I3', 'www.example.com/product3', 400, 'Electric Scooter', 'S2L3', 'In Stock', 'Aisle 3'),
    ('I3', 'www.example.com/product4', 389, 'Electric Scooter', 'S3L4', 'In Stock', 'Aisle 4'),
    ('I3', 'www.example.com/product5', 349, 'Electric Scooter', 'S4L5', 'Out of Stock', 'Aisle 5'),
    ('I3', 'www.example.com/product6', 459, 'Electric Scooter', 'S5L6', 'In Stock', 'Aisle 6'),
    ('I3', 'www.example.com/product7', 599, 'Electric Scooter', 'S2L7', 'In Stock', 'Aisle 7'),
    ('I3', 'www.example.com/product8', 649, 'Electric Scooter', 'S3L8', 'Out of Stock', 'Aisle 8'),
    ('I3', 'www.example.com/product9', 549, 'Electric Scooter', 'S4L10', 'In Stock', 'Aisle 9'),
	('I4', 'www.example.com/product1', 1.25, 'Bananas per lb', 'S1L1', 'In Stock', 'Aisle 1'),
    ('I4', 'www.example.com/product2', 1.35, 'Bananas per lb', 'S1L2', 'Out of Stock', 'Aisle 2'),
    ('I4', 'www.example.com/product3', 1.2, 'Bananas per lb', 'S2L3', 'In Stock', 'Aisle 3'),
    ('I4', 'www.example.com/product4', 1.1, 'Bananas per lb', 'S7L11', 'In Stock', 'Aisle 4'),
    ('I4', 'www.example.com/product5', 1.3, 'Bananas per lb', 'S6L9', 'Out of Stock', 'Aisle 5'),
    ('I4', 'www.example.com/product6', 1.45, 'Bananas per lb', 'S5L6', 'In Stock', 'Aisle 6'),
    ('I4', 'www.example.com/product7', 0.9, 'Bananas per lb', 'S8L12', 'In Stock', 'Aisle 7'),
    ('I4', 'www.example.com/product8', 0.95, 'Bananas per lb', 'S3L8', 'Out of Stock', 'Aisle 8'),
    ('I4', 'www.example.com/product9', 1.0, 'Bananas per lb', 'S4L10', 'In Stock', 'Aisle 9'),
    ('I7', 'www.example.com/product1', 18, 'Toilet Paper 16', 'S1L1', 'In Stock', 'Aisle 1'),
    ('I7', 'www.example.com/product2', 11,'Toilet Paper 18', 'S1L2', 'Out of Stock', 'Aisle 2'),
    ('I7', 'www.example.com/product3', 13, 'Toilet Paper 15', 'S2L3', 'In Stock', 'Aisle 3'),
    ('I7', 'www.example.com/product4', 14, 'Toilet Paper 18', 'S3L4', 'In Stock', 'Aisle 4'),
    ('I7', 'www.example.com/product5', 11, 'Toilet Paper 18', 'S4L5', 'Out of Stock', 'Aisle 5'),
    ('I7', 'www.example.com/product6', 19, 'Toilet Paper 16', 'S5L6', 'In Stock', 'Aisle 6'),
    ('I7', 'www.example.com/product7', 17, 'Toilet Paper 20', 'S2L7', 'In Stock', 'Aisle 7'),
    ('I7', 'www.example.com/product8', 16, 'Toilet Paper 22', 'S3L8', 'Out of Stock', 'Aisle 8'),
    ('I7', 'www.example.com/product9', 15, 'Toilet Paper 10', 'S4L10', 'In Stock', 'Aisle 9'),
    ('I5', 'www.example.com/product1', 4.99, 'Milk per gallon', 'S1L1', 'In Stock', 'Aisle 1'),
    ('I5', 'www.example.com/product2', 4.5, 'Milk per gallon', 'S1L2', 'Out of Stock', 'Aisle 2'),
    ('I5', 'www.example.com/product3', 5.5, 'Milk per gallon', 'S2L3', 'In Stock', 'Aisle 3'),
    ('I5', 'www.example.com/product4', 5.85, 'Milk per gallon', 'S7L11', 'In Stock', 'Aisle 4'),
    ('I5', 'www.example.com/product5', 6.75, 'Milk per gallon', 'S6L9', 'Out of Stock', 'Aisle 5'),
    ('I5', 'www.example.com/product6', 7.35, 'Milk per gallon', 'S5L6', 'In Stock', 'Aisle 6'),
    ('I5', 'www.example.com/product7', 6.45, 'Milk per gallon', 'S8L12', 'In Stock', 'Aisle 7'),
    ('I5', 'www.example.com/product8', 7.35, 'Milk per gallon', 'S3L8', 'Out of Stock', 'Aisle 8'),
    ('I5', 'www.example.com/product9', 5.0, 'Milk per gallon', 'S4L10', 'In Stock', 'Aisle 9'),
    ('I6', 'www.example.com/product1', 8.99, 'Detergent', 'S1L1', 'In Stock', 'Aisle 1'),
    ('I6', 'www.example.com/product2', 9.5, 'Detergent', 'S1L2', 'Out of Stock', 'Aisle 2'),
    ('I6', 'www.example.com/product3', 8.5, 'Detergent', 'S2L3', 'In Stock', 'Aisle 3'),
    ('I6', 'www.example.com/product4', 10.85, 'Detergent', 'S7L11', 'In Stock', 'Aisle 4'),
    ('I6', 'www.example.com/product5', 9.75, 'Detergent', 'S6L9', 'Out of Stock', 'Aisle 5'),
    ('I6', 'www.example.com/product6', 8.35, 'Detergent', 'S5L6', 'In Stock', 'Aisle 6'),
    ('I6', 'www.example.com/product7', 9.45, 'Detergent', 'S8L12', 'In Stock', 'Aisle 7'),
    ('I6', 'www.example.com/product8', 10.35, 'Detergent', 'S3L8', 'Out of Stock', 'Aisle 8'),
    ('I6', 'www.example.com/product9', 11.0, 'Detergent', 'S4L10', 'In Stock', 'Aisle 9');

-- Insert data into the PromotionOffer table
INSERT INTO PromotionOffer (Promotion_ID, PromotionType, Store_ID)
VALUES
    ('P1', 'Discount', 'S1'),
    ('P2', 'Buy One Get One', 'S2'),
    ('P3','CashBack','S3');


-- Insert data into the Help Desk table
INSERT INTO HelpDesk (Call_ID, Request_ID, RequestDescription, Client_ID,Store_Sr_Num, Request_Status)
VALUES
    ('H1', 'R1', 'Technical Support', 'C1','S1L1', 'Open'),
	('H2', 'R1', 'Technical Support', 'C1','S1L1', 'Open'),
	('H3', 'R2', 'Product Inquiry', 'C4','S2L3', 'Close'),
	('H4', 'R3', 'Technical Support', 'C5','S5L6', 'Close'),
	('H5', 'R4', 'Product Inquiry', 'C9','S2L7', 'Close'),
	('H6', 'R5', 'Technical Support', 'C3','S7L11', 'Open');


-- Insert data into the MembershipOption table
INSERT INTO MembershipOption (Membership_ID,  Membership_Description, Store_ID)
VALUES
    ('M1', 'Premium Membership', 'S1'),
    ('M2', 'Basic Membership', 'S2');
	

-- Insert data into the StoreTraffic table
INSERT INTO StoreTraffic (Store_ID,Time_Period, Traffic)
VALUES
    ('S1', 'Morning', 'Low'),
    ('S1', 'Noon', 'Low'),
    ('S1', 'Afternoon', 'High'),
    ('S1', 'Evening', 'High'),
    ('S1', 'Night', 'Medium'),
    ('S2', 'Morning', 'Low'),
    ('S2', 'Noon', 'Low'),
    ('S2', 'Afternoon', 'High'),
    ('S2', 'Evening', 'High'),
    ('S2', 'Night', 'Medium'),
	('S3', 'Morning', 'Low'),
    ('S3', 'Noon', 'High'),
    ('S3', 'Afternoon', 'High'),
    ('S3', 'Evening', 'High'),
    ('S3', 'Night', 'Medium'),
    ('S4', 'Morning', 'Low'),
    ('S4', 'Noon', 'High'),
    ('S4', 'Afternoon', 'High'),
    ('S4', 'Evening', 'High'),
    ('S4', 'Night', 'Medium'),
    ('S5', 'Morning', 'Low'),
    ('S5', 'Noon', 'Low'),
    ('S5', 'Afternoon', 'High'),
    ('S5', 'Evening', 'High'),
    ('S5', 'Night', 'Medium'),
    ('S6', 'Morning', 'Low'),
    ('S6', 'Noon', 'Low'),
    ('S6', 'Afternoon', 'High'),
    ('S6', 'Evening', 'High'),
    ('S6', 'Night', 'Medium'),
    ('S7', 'Morning', 'High'),
    ('S7', 'Noon', 'High'),
    ('S7', 'Afternoon', 'High'),
    ('S7', 'Evening', 'High'),
    ('S7', 'Night', 'Medium'),
    ('S8', 'Morning', 'Low'),
    ('S8', 'Noon', 'Low'),
    ('S8', 'Afternoon', 'High'),
    ('S8', 'Evening', 'High'),
    ('S8', 'Night', 'Medium');
