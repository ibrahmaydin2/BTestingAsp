<%@ page language="c#" inherits="IdeaWeb.GeneralException, App_Web_2vx2ciqs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Exception</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background = "../auxiliary/images/background.gif">
		<form id="frmMain" method="post" runat="server">
			<table cellSpacing="0" borderColorDark="white" cellPadding="1" width="100%" borderColorLight="gray"
				border="1" runat="server">
				<tr height="100">
					<td>
						<table height="100%" width="100%">
							<tr>
								<td width="150"><img src="auxiliary/images/warn1.gif">
								</td>
								<td>
									<P><asp:label id="lblCaption01" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large"> Geçersiz bir işlem yürütüldü.</asp:label>
										<br>
										<asp:label id="lblCaption02" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Large">Lütfen destek biriminiz ile irtibata geçiniz.</asp:label></P>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table cellSpacing="3" cellPadding="1" width="100%" height="100%" runat="server" border="0">
							<tr height="10">
								<td width="150"><STRONG>Sayfa</STRONG></STRONG></td>
								<td>
									<asp:Label id="lblPage" runat="server" Font-Names="Tahoma" Font-Size="Smaller" ForeColor="Red"
										Font-Bold="True"></asp:Label></td>
							</tr>
							<TR>
								<TD width="150"><STRONG>Hata</STRONG></TD>
								<TD>
									<asp:Label id="lblErr" runat="server" Font-Names="Tahoma" Font-Size="Smaller" Font-Bold="True"></asp:Label></TD>
							</TR>
							<TR>
								<TD width="150"><STRONG>Çalışan son SQL</STRONG></TD>
								<TD>
									<asp:Label id="lblSQL" runat="server" Font-Size="Smaller" Font-Names="Tahoma" Font-Bold="True"></asp:Label></TD>
							</TR>
							<TR>
								<td valign="top"><STRONG>Açıklama</STRONG></td>
								<td valign="top">
									<asp:Label id="lblDetail" runat="server" Font-Names="Tahoma" Font-Size="Smaller"></asp:Label></td>
							</TR>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
