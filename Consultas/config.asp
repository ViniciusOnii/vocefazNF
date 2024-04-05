<%

Dim erpDB
Dim lojaDB
   
Dim DB_PATH

Session.Timeout = 60

Set erpDB = Server.CreateObject("ADODB.Connection")
erpDB.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=BLCA;Pwd=g654840562;Initial Catalog=ERP;Data Source=191.252.156.66"

      
%>