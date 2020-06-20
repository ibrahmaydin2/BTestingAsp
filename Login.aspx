<%@ page language="c#" inherits="IdeaWeb.Login, App_Web_2vx2ciqs" enablesessionstate="True" %>

<%@ Register TagPrefix="cc1" Namespace="skmMenu" Assembly="skmMenu" %>
<%@ Register Assembly="Library" Namespace="Idea.Library" TagPrefix="cc2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Banvit FOM </title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <link href="auxiliary/images/favicon.ico" rel="SHORTCUT ICON">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
    <meta http-equiv="Content-Language" content="Turkish">
    <script src="auxiliary/js/GlobalScripts.js" type="text/javascript"></script>
    <link href="auxiliary/css/styles01.css" type="text/css" rel="stylesheet">


    <script>
		
			
				
			if (parent.frames.length > 0) {
				parent.location.href = self.document.location 
			}
			
			function opacity(id, opacStart, opacEnd, millisec)
			{
				
				//speed for each frame
				var speed = Math.round(millisec / 100);
				var timer = 0;

				//determine the direction for the blending, if start and end are the same nothing happens
				if(opacStart > opacEnd) 
				{
					
					for(i = opacStart; i >= opacEnd; i--) 
					{
						setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
						timer++;
					}
				
				} 
				else if(opacStart < opacEnd) 
				{
					
					for(i = opacStart; i <= opacEnd; i++)
					{
						setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
						timer++;
					}
				
				}

			}



		//change the opacity for different browsers
		function changeOpac(opacity, id) 
		{
			
			var object = document.getElementById(id).style;
		 
			object.opacity = (opacity / 100);
			object.MozOpacity = (opacity / 100);
			object.KhtmlOpacity = (opacity / 100);
			object.filter = "alpha(opacity=" + opacity + ")";

		}
																		
    </script>

</head>
<body bottommargin="2" bgcolor="white" leftmargin="5" background="auxiliary/images/background.gif"
    topmargin="2" rightmargin="5">
    <form id="Form1" method="post" runat="server">
    <div id="divChangePassword" style="display: inline; overflow: auto; width: 300px;
            border-top-style: ridge; border-right-style: ridge; border-left-style: ridge;
            position: absolute; height: 200px; background-color: #ffffff; border-bottom-style: ridge"
            runat="server">
            <table height="150" cellspacing="2" cellpadding="2" width="300" align="center" border="0">
            </table>
            <table id="tblChngPass" cellspacing="2" cellpadding="2" width="100%" border="0">
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="lblPasswordValidDate" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOldPassword" runat="server">Eski Şifre:</asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtOldPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNewPassword1" runat="server">Yeni Şifre:</asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtNewPassword1" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNewPassword2" runat="server">Yeni Şifre (Tekrar):</asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtNewPassword2" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnChangePassword" runat="server" Width="90px" Font-Size="8pt" Font-Names="Verdana"
                            Text="Değiştir" OnClick="btnChangePassword_Click"></asp:Button>
                        &nbsp; &nbsp;
                        <asp:Button ID="btnClose" runat="server" Width="90px" Font-Size="8pt" Font-Names="Verdana"
                            Text="Kapat" OnClick="btnClose_Click"></asp:Button>
                    </td>
                </tr>
            </table>
        </div>
        <table id="tblMain" height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tr id="trMainHeader" height="59">
                <td>
                    <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr valign="middle">
                            <td background="auxiliary\images\top_back.jpg">
                            </td>
                            <td background="auxiliary\images\top_back.jpg">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Panel ID="panel01" BorderWidth="1px" Width="200" runat="server" BorderColor="Silver">
                        <table height="150" cellspacing="2" cellpadding="2" width="300" align="center" border="0">
                            <tr>
                                <td align="center" colspan="2">
                                    <img src="auxiliary/images/login_logo.gif"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table cellspacing="0" cellpadding="0" width="100%">
                                        <tr>
                                            <td width="100">
                                                <asp:Label ID="lblLoginName" runat="server">Kullanıcı Adı:</asp:Label></td>
                                            <td align="right">
                                                <asp:TextBox ID="txtUserName" runat="server" Width="100%" MaxLength="20"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblLoginPass" runat="server">Şifre:</asp:Label></td>
                                            <td align="right">
                                                <asp:TextBox ID="txtLoginPass" runat="server" Width="100%" MaxLength="20" TextMode="Password"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server">Dil:</asp:Label></td>
                                            <td align="right">
                                                <asp:DropDownList ID="cmbLanguage" runat="server" Width="100%" DataValueField="RECORD_ID"
                                                    DataTextField="DESCRIPTION_1">
                                                </asp:DropDownList></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px" align="left">
                                    <asp:Label ID="lblVersion" runat="server" Font-Names="Tahoma" Font-Size="Smaller"
                                        ForeColor="Maroon"></asp:Label></td>
                                <td align="right">
                                    <asp:Button ID="btnSubmit" runat="server" Width="90px" Font-Names="Verdana" Font-Size="8pt"
                                        Text="Giriş" OnClick="btnSubmit_Click"></asp:Button></td>
                            </tr>
                            <tr>
                                <td style="width: 113px" align="right">
                                </td>
                                <td align="right" height="20">
                                    <asp:Label ID="lblLoginFailed" runat="server" Font-Names="Tahoma" ForeColor="Maroon"></asp:Label></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr id="trMainMessage" height="10">
                <td>
                    &nbsp;</td>
            </tr>
            <tr id="trMain">
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr id="trMainBottom" height="20">
                <td>
                    &nbsp;
                    <asp:Label ID="lblGeneralException" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></td>
            </tr>
        </table>
        
    </form>
</body>
</html>
