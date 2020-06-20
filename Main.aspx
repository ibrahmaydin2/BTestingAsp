<%@ Reference Page="~/systemmanagement/roles.aspx" %>
<%@ Register TagPrefix="cc1" Namespace="skmMenu" Assembly="skmMenu" %>

<%@ page language="c#" inherits="IdeaWeb.Main, App_Web_2vx2ciqs" enablesessionstate="True" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI, Version=1.9.0.0, Culture=neutral, PublicKeyToken=24d65337282035f2" %>
<%@ Register TagPrefix="cc2" Namespace="Idea.Library" Assembly="Library" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Banvit FOM</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <meta http-equiv="Content-Language" content="tr">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="auxiliary/css/styles01.css" type="text/css"  rel="stylesheet">
    <link rel="SHORTCUT ICON" href="auxiliary/images/favicon.ico">

     <script src="auxiliary/js/GlobalScripts.js" type="text/javascript"></script>

    <script src="auxiliary/js/AC_RunActiveContent.js" type="text/javascript"></script>

    <script>window.status = '..:: Banvit FOM / Idea Teknoloji Çözümleri ::..'</script>

    <script>
		
		function AjaxContentPage()
		{
		   return document.URL.substring(0, document.URL.lastIndexOf('/')) + '/AjaxContent/AjaxContent.aspx';
		}
		
		function call_async_request( url )
		{
			var oXmlHttp = XMLHTTP_Create(); 

			if(oXmlHttp)
			{ 
				oXmlHttp.open("GET",url,true);
				oXmlHttp.send();
			}
		}
		
		function ShowPopupMessage()
		{
		window.open('PopUp/PopUpAnnouncement.aspx?', '', "toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=1,resizable=1,width=600,height=480,left=40,top=50");
}

        function OpenDocumentLibrary() {


            var wleft = (screen.width - 800) / 2;
            var wtop = (screen.height - 520) / 2;

            var WinSettings = "toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=1,resizable=0,width=808,height=435,left=" + wleft + ",top=" + wtop;
            var SearchDialogResult = window.open("PopUp/DocumentLibrary.aspx", '', WinSettings);

        }


		function MM_swapImage() { 
		    var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
		        if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
		}

		function MM_swapImgRestore() { 
		    var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
		}

		function MM_findObj(n, d) { 
		    var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
		        d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
		    }
		    if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
		    for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
		    if (!x && d.getElementById) x = d.getElementById(n); return x;
		}
    </script>

</head>
<body id="bodyMain" runat="server" bottommargin="2" leftmargin="5" background="../auxiliary/images/background.gif"
    topmargin="2" rightmargin="5">
     
    <form id="frmMainFrameForm" method="post" runat="server" style="z-index:1;">
        <table id="tblMain" height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tr id="trMainHeader" height="56">
                <td valign="top"> 
                    <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr valign="top">
                            <td width="150" background="auxiliary\images\vp.jpg" valign="top">
                                <script type="text/javascript">
									AC_FL_RunContent( 'codebase','http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0','width','150','height','59','id','vp','align','top','src','vp','quality','high','bgcolor','#ffffff','name','vp','allowscriptaccess','sameDomain','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','vp' ); //end AC code
									
									</script> 
                            </td>
                            <td background="auxiliary\images\top_back.jpg">
                            </td>
                            <td background="auxiliary\images\top_back.jpg">
                            </td>
                            <td valign="top" align="right" background="auxiliary\images\top_back.jpg">
                                <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr height="0">
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100" id="tdEmployeeLabel" runat="server" style="font-weight: bold; font-size: 7pt;
                                            color: white; font-family: Verdana">
                                        </td>
                                        <td id="tdPersonel" nowrap runat="server" style="font-size: 7pt; color: white">
                                            &nbsp;</td>
                                            <td width="500">&nbsp;</td>
                                        <td>
                                            <a href="Portal/Portal.aspx" target="iframe_main"><font color="white">Portal</font></a>&nbsp;
                                            <span id = "spnDocumentLibrary" runat="server" onclick="OpenDocumentLibrary();" >
                                            <a href="#"><font color="white">Döküman Kütüphanesi</font></a>
                                            </span>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td width="100" id="tdBranchLabel" runat="server" style="font-weight: bold; font-size: 7pt;
                                            color: white; font-family: Verdana">
                                            <p>
                                                <strong style="color: white"></strong>&nbsp;</p>
                                        </td>
                                        <td>
                                            <cc2:DropDownEdit ID="cmbActiveSystemDistributor" runat="server" BackColor="#E88212"
                                                onchange="ActiveDistributorChanged()" Database_InsertEmptyItem="False" Database_FieldType="None"
                                                Database_SelectTableType="FromTable" DataValueField="RECORD_ID" DataTextField="DESCRIPTION_1"
                                                Width="250px" ForeColor="White" Font-Size="Smaller">
                                            </cc2:DropDownEdit></td>
                                            <td width="500">&nbsp;</td>
                                        <td nowrap>
                                            <asp:LinkButton ID="btnloggout" runat="server" BackColor="Transparent" ForeColor="White"
                                                OnClick="btnloggout_Click">Sistemden Çık</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr height="0">
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="3">
                <td>
                </td>
            </tr>
            <tr id="trMainMenu" height="20">
                <td style="height: 9px">
                    <cc1:Menu ID="oMenu" runat="server" BorderWidth="1px" ClickToOpen="true" GridLines="Both"
                        HighlightTopMenu="True" menufadedelay="2" layout="Horizontal" cellpadding="2"
                        cellspacing="0">
                    </cc1:Menu>
                </td>
            </tr>
            <tr id="trBody">
                <td>
                    <table id="tblBody" height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr height="4">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td id="tdBodyMainPanel">
                                <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr id="trBodyMainPanelFill">
                                        <td colspan="3">
                                            <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                                                <tr>
                                                    <td>
                                                        <iframe name="iframe_main" onfocus="IsBranchChanged(AjaxContentPage()+'?Id=0');"
                                                            frameborder="0" width="100%" scrolling="auto" height="100%" src="Portal/Portal.aspx">
                                                        </iframe>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr id="trStatus" style="cursor: hand" onclick="ClearStatus()" height="20">
                <td style="cursor: hand" onclick="ClearStatus()">
                    <table style="cursor: hand" onclick="ClearStatus()" cellspacing="0" cellpadding="5"
                        width="100%" border="1">
                        <tr style="cursor: hand" onclick="ClearStatus()">
                            <td id="tdStatus" style="cursor: hand" onclick="ClearStatus()" runat="server">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
