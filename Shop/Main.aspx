<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Shop.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Styles/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sweets Shop</h1>
            <h4>Add goods</h4>

            <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />

            <p>Название: 
                <asp:TextBox ID="name" runat="server" Width="185px"></asp:TextBox>
            </p>

            <p>Цена за 1: 
                <asp:TextBox ID="price" runat="server" Width="185px"></asp:TextBox>
            </p>
            <p>Вид товара:</p>         

            <asp:ListBox ID="type" runat="server" Width="120px">
                <asp:ListItem>Конфеты</asp:ListItem>
                <asp:ListItem>Шоколад</asp:ListItem>
                <asp:ListItem>Торт</asp:ListItem>
                <asp:ListItem>Мороженное</asp:ListItem>
                <asp:ListItem>Леденцы</asp:ListItem>
            </asp:ListBox>
            </br>
            </br>
            <button onclick="AddGood">Добавить</button>
        </div>   
    </form>
</body>
</html>
