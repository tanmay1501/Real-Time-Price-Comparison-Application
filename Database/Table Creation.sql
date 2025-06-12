-- Createing the Database
CREATE DATABASE PriceComparisonSystems;
use PriceComparisonSystems;
SHOW TABLES;

-- Create the Location table
CREATE TABLE Location (
    Location_ID VARCHAR(20),
    Zip_Code INT,
    Lattitude DECIMAL(25,23),
    Longitude DECIMAL(25,23),
    PRIMARY KEY (Location_ID)
);


-- Create the Client table
CREATE TABLE Client (
    Client_ID VARCHAR(20),
    F_Name VARCHAR(20),
    L_Name VARCHAR(20),
    Email VARCHAR(40),
    Contact BIGINT(11),
    L_ID VARCHAR(20),
    PRIMARY KEY (Client_ID),
	FOREIGN KEY (L_ID) REFERENCES Location(Location_ID)
);

-- Create the Session table
CREATE TABLE Session (
    Client_ID VARCHAR(20),
    Start_TimeStamp TIMESTAMP,
    End_TimeStamp TIMESTAMP,
    PRIMARY KEY (Client_ID, Start_TimeStamp),
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID)
);

-- Create the Store table
CREATE TABLE Store (
    Store_ID VARCHAR(20),
    Store_Name VARCHAR(20),
	Store_Timings varchar(20),
    PRIMARY KEY (Store_ID)
);


-- Create the Store_details Table 
CREATE TABLE Store_Details (
    Serial_Number varchar(30),
    Store_ID VARCHAR(20),
    Pharmacy BOOLEAN,
    Gas_Station Boolean,
    Address varchar(50),
    L_ID VARCHAR(20),
    PRIMARY KEY (Serial_Number),
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID),
	FOREIGN KEY (L_ID) REFERENCES Location(Location_ID)
    
);
-- Create the Item table
CREATE TABLE Item (
    Item_ID VARCHAR(20),
    Item_Name VARCHAR(20),
    PRIMARY KEY (Item_ID)
    );
    
-- Create the Item_details Table 
CREATE TABLE Item_details (
    Item_ID VARCHAR(20),
    Hyperlink VARCHAR(120),
    Price float,
    Descriptions VARCHAR(120),
    Store_Sr_Num VARCHAR(20),
	Availability Varchar(20),
    Item_Location Varchar(20),
    PRIMARY KEY (Item_ID, Store_Sr_Num),
	FOREIGN KEY (Item_ID) REFERENCES Item(Item_ID),
    FOREIGN KEY (Store_Sr_Num) REFERENCES Store_Details(Serial_Number)
);

-- Create the PromotionOffer table
CREATE TABLE PromotionOffer (
    Promotion_ID VARCHAR(20),
    PromotionType VARCHAR(20),
    Descriptions Varchar(30),
    Store_ID VARCHAR(20),
    PRIMARY KEY (Promotion_ID),
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);


-- Create the Help Desk table
CREATE TABLE HelpDesk (
    Call_ID VARCHAR(20),
    Request_ID VARCHAR(20),
    RequestDescription VARCHAR(20),
    Client_ID VARCHAR(20),
    Store_Sr_Num Varchar(20),
    Request_Status VARCHAR(20),
    PRIMARY KEY (Call_ID),
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID),
    FOREIGN KEY (Store_Sr_Num) REFERENCES Store_Details(Serial_Number)
);

-- Create the MembershipOption table
CREATE TABLE MembershipOption (
    Membership_ID VARCHAR(20),
    Membership_Description VARCHAR(20),
    Store_ID VARCHAR(20),
    PRIMARY KEY (Membership_ID),
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);


-- Create the StoreTraffic table
CREATE TABLE StoreTraffic (
    Store_ID VARCHAR(20),
    Time_period Varchar(20),
    Traffic VARCHAR(20),
    PRIMARY KEY (Store_ID, Time_period),
    FOREIGN KEY (Store_ID) REFERENCES Store(Store_ID)
);
