<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="ViewState.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtValue" 
                     runat="server" 
                     Height="160px" 
                     TextMode="MultiLine" 
                     Width="460px">This is a test</asp:TextBox><br />
        <br />
        <asp:Button ID="cmdSave" 
                    runat="server" 
                    OnClick="cmdSave_Click" 
                    Text="Save Contents" />
        <asp:Button ID="cmdLoad" 
                    runat="server" 
                    OnClick="cmdLoad_Click" 
                    Text="Load Contents" />
    </div>
    </form>
</body>
</html>
