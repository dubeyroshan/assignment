use day1

create table store_sales (month varchar(20) , prod_name varchar(20) , sales int not null );
insert into store_sales (month, prod_name, sales)
				value ("jan","fruits",45000),
					("jan","vegetables",67000),
                    ("jan","dairy",55000),
                    ("feb","fruits",42000),
                    ("feb","vegetables",32000),
                    ("feb","dairy",52000),
                    ("march","fruits",61000),
                    ("march","vegetables",43000),
                    ("march","dairy",92000);
		
select* from store_sales