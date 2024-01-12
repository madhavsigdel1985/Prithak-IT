USE [Zorba]
GO
/****** Object:  StoredProcedure [dbo].[SP_Book_Price]    Script Date: 1/2/2024 11:39:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[SP_Book_Price](@Author Varchar(50))
as 

  --Madhav Sigdel
--514 Applewood Dr
--League City, Texas  
  
Begin
select * from(
Select A.Author,C.Book_Name,D.Price from Author A
inner join   Author_Book B on A.Author_ID=B.Author_ID
inner join Book C on C.Book_ID=B.Book_ID
inner join Price D on B.Book_ID=D.book_id
where A.Author=@Author
             ) As E

 
End
