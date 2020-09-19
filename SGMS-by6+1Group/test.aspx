
<script runat="server">
Sub Page_Load
lbl1.Text="现在时间是 " & now()
End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><asp:label id="lbl1" runat="server" /></p>
        </div>
    </form>
</body>
</html>
