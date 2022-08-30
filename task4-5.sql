use imageshop;
alter table employee RENAME Employee;
alter table Employee RENAME column emp_id to EmployeeID;
alter table Employee RENAME column emp_add to EmployeeAddress;
alter table Employee RENAME column emp_dob to EmployeeDOB;
alter table Employee RENAME column emp_name to FirstName;
alter table Employee add column LastName varchar(20);
alter table Employee drop column emp_email;
alter table Employee drop column emp_mob;
alter table Employee drop foreign key employee_ibfk_1 ;
alter table Employee drop column depart_id;
describe Employee;

alter table Employee add column Designation varchar(20);
alter table Employee add column PhoneNO bigint;
describe Employee;

alter table payment rename TransactionClient;
alter table TransactionClient rename column payment_id to TransactionID;
alter table TransactionClient rename column cat_id to ClientID;
describe TransactionClient;




alter table TransactionClient rename column img_id to ProjectID;
alter table TransactionClient rename column transaction_datetime to TransactionDate;

alter table user_add drop foreign key user_add_ibfk_1;
alter table user_add drop column user_id ;


alter table user_details drop foreign key user_details_ibfk_1;
alter table user_details drop column add_id;

alter table TransactionClient drop foreign key transactionclient_ibfk_1;
alter table TransactionClient drop column ClientID;

alter table TransactionClient drop foreign key transactionclient_ibfk_2;
alter table TransactionClient drop column ProjectID;

alter table category drop foreign key category_ibfk_1;
alter table category drop column img_id;

drop table category;
drop table user_add;
drop table user_details;
drop table department;
drop table images;

create table projects(
ProjectID int,
ClientID int,
EmployeeID int,
ProjectDetails varchar(255),
StartDate date,
DueDate date,
IsCompleted varchar(5),
ProjectCategory varchar(50),
primary key(ProjectID));


create table UserClients(
ClientID int,
PhoneNo bigint,
ClientName varchar(20),
Category varchar(15));


create table AdminPanel(
AdminID int,
AdminName varchar(20),
EmployeeID int,
primary key(AdminID));

alter table UserClients
add primary key(ClientID);

create table Contacts(
ContactID int,
ClientID int,
EmployeeID int,
AdminID int,
primary key(ContactID));

alter table TransactionClient rename TranscationEmployee;
alter table TranscationEmployee add column ProjectID int;
alter table TranscationEmployee add column EmployeeID int;



create table TranscationClient(
TranscationID int,
ClientID int,
ProjectID int,
TranscationDate date,
primary key(TranscationID));

alter table Contacts add foreign key (ClientID) references UserClients(ClientID); 

alter table TranscationClient add foreign key (ClientID) references UserClients(ClientID);

alter table AdminPanel add foreign key (EmployeeID) references Employee(EmployeeID) ;

alter table Projects add foreign key (EmployeeId) references Employee(EmployeeID);

alter table TranscationEmployee add foreign key (EmployeeID) references Employee(EmployeeId);

alter table Projects add foreign key (ClientId) references UserClients(ClientId);




