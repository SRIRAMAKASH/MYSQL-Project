drop database Librarydb;

-- create a database
create database Librarydb;
use Librarydb;

-- book table
create table book(bid int not null primary key auto_increment,bname varchar(30),bdomain varchar(30));
show tables;
desc book;

-- readers
create table readers(reader_id int not null,fname varchar(30),mname varchar(30),
ltname varchar(30),city varchar(15),mobileno numeric,occupation varchar(30),dob date);
show tables;
desc readers;
alter table readers add primary key(reader_id) ;

-- active reader
create table active_reader(account_id int not null,reader_id int not null, bid int not null,atype varchar(10)
,astatus varchar(10),primary key(account_id),foreign key(reader_id) references readers(reader_id),foreign key(bid) references book(bid)); 
show tables;
desc active_reader;


-- bookissues_details
create table bookissues_details(issuenumber int not null primary key,account_id int not null,
bid int,bookname varchar(20),numbers_of_book_issued int,foreign key(account_id) references active_reader(account_id));
show tables;
desc bookissues_details;