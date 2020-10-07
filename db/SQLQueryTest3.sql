/*CREATE DATABASE Test1*/

CREATE TABLE BusinessOpportunities (
    BusOppId INT Identity(1,1) Primary Key,
    BusName varchar(50), 
	/*VenFileName int not null foreign key references Venture(VenFileName),*/
	BusVideoLink varchar(50),
	BusDescription varchar(250),
    Details varchar(250)
);

Insert into BusinessOpportunities values('Real Estate investment', 'C:\db/pics/DH.mp4', 'This business is very good', 'This business is very good');


select * from Venture;
select * from BusinessOpportunities; 
drop table BusinessOpportunities
