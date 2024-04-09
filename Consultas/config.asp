<%

Dim erpDB
Dim lojaDB
   
Dim DB_PATH

Session.Timeout = 60

Set erpDB = Server.CreateObject("ADODB.Connection")
erpDB.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=ERPVOCEFAZNFE;Pwd=E@654#1;Initial Catalog=ERP;Data Source=LOCALHOST"

      
%>