<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>

<div class="table-responsive col-sm-10 col-sm-offset-1">
<div class="text-center">
    <h1><b> Maskapai Penerbangan </b></h1>
</div>
<table border='1' cellspacing='0' cellpadding='3' id="example">
	<thead>
	<tr class="table-success">
			<th>ID</th>
			<th>From</th>
			<th>To</th>
			<th>Depart</th>
			<th>Arrive</th>
			<th>Price</th>
	</tr>
	</thead>
	<style>
	table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td,
    th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
</style>
	
	<tbody>
	<%
	try
	{
		String[] aFile = {"maskapaiCH.json", "maskapaiRS.json", "maskapaiMS.json"};
		for (int z = 0; z < aFile.length; z++) {
		FileReader fileReader = new FileReader("C:\\xampp\\tomcat\\webapps\\ROOT\\(4) File JSP\\json\\" + aFile[z]);
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject) parser.parse(fileReader);

		JSONArray characters = (JSONArray) json.get("flight");
		Iterator i = characters.iterator();
		while (i.hasNext())
		{
			JSONObject json1 = (JSONObject) i.next();
			String id = (String) json1.get("id");
			String from = (String) json1.get("dari");
			String to = (String) json1.get("ke");
			String depart = (String) json1.get("depart");
			String arrive = (String) json1.get("arrive");
			String price = (String) json1.get("price");
 
			%>
			<tr>
				<td><%=id%></td>
				<td><%=from%></td>
				<td><%=to%></td>
				<td><%=depart%></td>
				<td><%=arrive%></td>
				<td><%=price%></td>
			</tr>
			<%
		}
		}
	}
	catch (Exception ex)
	{
		ex.printStackTrace();
		out.println("ERROR");
	}
%>
</tbody>