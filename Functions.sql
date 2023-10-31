use abhishek
go 
select * from student

go
--character = alphabet / digit / special character
select ascii('A') --65
select ascii(' ') --32
select ascii('Z') --90
--0 to 9 = 40 to 57
--A to Z = 65 to 90
--a to Z = 97 to 122

--find character from ascii code
select char(97) --a
select char(100) --d

--use ascii values from A to Z and print characters
declare @start int = 65
while (@start <= 90)
begin
print char(@start)
set @start =@start + 1
end

go
declare @name varchar(50) = 'Abhishek'
print @name 
print upper (@name) --capital letters
print lower (@name) --small letters

select name,upper(name) as nameinupper from student
select name,lower(name) as nameinupper from student
go

declare @name varchar(50) = '     Abhishek     '
print @name
print ltrim(@name) --Remove space from left side
print rtrim(@name) --Remove space from right side
print trim(@name) --Remove space from both side

go

declare @name varchar(50) = 'Abhishek'
print len(@name) --8
print reverse(@name) --kehsihbA

go

declare @name varchar(50) = 'Abhishek'
print @name
print left(@name,4) --Abhi

go

declare @name varchar(50) = 'Abhishek'
print @name
print right(@name,4) --shek

go

declare @mobile char(14) = '+91 9373565643'
print @mobile --+91 9373565643 
print right(@mobile,10) --9373565643

go

select name from student
--all student name start with S
select name from student where name like 's%'
--without using like operator
select name from student where left(name,1) = 's'

--all student name ends with I
select name from student where name like '%I'
--without using like operator
select name from student where right(name,1) = 'N'

