use blinkitdb

select * from blinkit_data;

select count(*) from blinkit_data

update blinkit_data
set Item_Fat_Content = 
case
when Item_Fat_Content in('LF','low fat') then 'Low Fat'
when Item_Fat_Content in('reg') then 'Regular'
else Item_Fat_Content
end

select distinct Total_Sales from  blinkit_data;

select sum(Total_sales) as revenue from blinkit_data;

select cast(sum(Total_sales)/1000000 as decimal(10,2)) as total_sales_millions from blinkit_data;

select avg(Total_sales) as Average_Sales from blinkit_data;

select cast(avg(Total_sales) as decimal(10,2)) as Average_Sales from blinkit_data;

select count (* ) as No_of_Items from blinkit_data;

select cast(avg(Rating) as decimal(10,2)) as average_rating from blinkit_data;

select Item_Fat_Content,
              cast(sum(Total_Sales) as decimal(10,2))as total_sales,
              cast(avg(Total_sales) as decimal(10,2)) as Average_Sales, 
              count (* ) as No_of_Items,
              cast(avg(Rating) as decimal(10,2)) as average_rating
 from blinkit_data group by Item_Fat_Content;

 select Item_Type,cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales from blinkit_data group by Item_Type;

 select Item_Fat_Content,Outlet_Location_Type, cast(sum(Total_Sales) as decimal(10,2)) from blinkit_data 
 group by Item_Fat_Content,Outlet_Location_Type;

 select Outlet_Establishment_Year,cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales from blinkit_data 
 group by Outlet_Establishment_Year;

 select Outlet_Size,cast(sum(Total_Sales)as decimal(10,2)) as Total_Sales,
 cast((sum(Total_Sales)*100/sum(sum(Total_Sales)) over()) as decimal(10,2))  as sales_percentage from blinkit_data 
 group by Outlet_Size;

 select Outlet_Location_Type,cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales from blinkit_data group by Outlet_Location_Type;


