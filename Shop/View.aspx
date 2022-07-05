<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Shop.View" %>

<%@ Import Namespace="Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Styles/StyleSheet.css" />
</head>
<body>
<h2>Товары</h2>

    <table>
        <thead>
            <tr>
                <th>Название</th>
                <th>Цена</th>
                <th>Тип</th>
            </tr>
        </thead>
        <tbody>
            <% var yesData = GoodList.GetRepository().GetAllResponses();
                    
                foreach (var rsvp in yesData) {
                    string htmlString = 
                        String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td>",
                        rsvp.Name, rsvp.Price, rsvp.Type);
                    Response.Write(htmlString);
                } %>
        </tbody>
    </table>
</body>
</html>
