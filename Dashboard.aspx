<%@ page language="c#" inherits="IdeaWeb.Dashboard, App_Web_2vx2ciqs" %>
<%@ Register TagPrefix="cc2" Namespace="Idea.Library" Assembly="Library" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>Dashboard</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="auxiliary/js/Dashboard.js" type="text/javascript"></script>
		<style>TD { FONT-SIZE: 7pt; FONT-FAMILY: Arial }
	.drag { CURSOR: hand; POSITION: relative }
	</style>
</HEAD>
	<body bottomMargin="2" leftMargin="5" background="auxiliary/images/background.gif" topMargin="2"
		onload="drawItems();" rightMargin="5">
		<form id="frmMain" method="post" runat="server">
			<table height="90%" cellSpacing="0" cellPadding="0" width="100%" borderColorLight="white"
				border="0">
				<TBODY>
					<tr>
						<td>&nbsp;
							<div class="drag" id="divItem1" style="DISPLAY: none; Z-INDEX: 101; LEFT: 0px; OVERFLOW: auto; WIDTH: 400px; POSITION: absolute; TOP: 0px; HEIGHT: 175px; BACKGROUND-COLOR: gainsboro"
								runat="server"><asp:datagrid id="grdItem1" runat="server" AutoGenerateColumns="False" CssClass="dashBoardGrid"
									Font-Names="Tahoma" Font-Size="Smaller" Width="100%" BorderColor="Gainsboro">
									<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#339966"></SelectedItemStyle>
									<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
									<ItemStyle ForeColor="#333333" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" Wrap="False" ForeColor="Black" BackColor="PaleVioletRed"></HeaderStyle>
									<Columns>
										<asp:BoundColumn Visible="False" DataField="RECORD_ID" HeaderText="RECORD_ID"></asp:BoundColumn>
										<asp:BoundColumn DataField="CODE" HeaderText="&#220;r&#252;n Kodu"></asp:BoundColumn>
										<asp:BoundColumn DataField="ITEM" HeaderText="&#220;r&#252;n"></asp:BoundColumn>
										<asp:BoundColumn DataField="QUANTITY" HeaderText="Miktar"></asp:BoundColumn>
									</Columns>
								</asp:datagrid></div>
							<div class="drag" id="divItem2" style="DISPLAY: none; Z-INDEX: 100; LEFT: 0px; OVERFLOW: auto; WIDTH: 280px; POSITION: absolute; TOP: 0px; HEIGHT: 175px; BACKGROUND-COLOR: gainsboro"
								runat="server"><asp:datagrid id="grdItem2" runat="server" AutoGenerateColumns="False" CssClass="dashBoardGrid"
									Font-Names="Tahoma" Font-Size="Smaller" Width="100%" BorderColor="Gainsboro">
									<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#339966"></SelectedItemStyle>
									<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
									<ItemStyle Font-Size="XX-Large" ForeColor="#333333" BackColor="White"></ItemStyle>
									<HeaderStyle Font-Bold="True" Wrap="False" ForeColor="Black" BackColor="GreenYellow"></HeaderStyle>
									<Columns>
										<asp:BoundColumn Visible="False" DataField="CLASS_ID" HeaderText="RECORD_ID"></asp:BoundColumn>
										<asp:BoundColumn DataField="CLASS" HeaderText="&#220;r&#252;n Sınıfı"></asp:BoundColumn>
										<asp:BoundColumn DataField="QUANTITY" HeaderText="Miktar"></asp:BoundColumn>
									</Columns>
								</asp:datagrid></div>
							<DIV class="drag" id="divItem3" style="DISPLAY: none; Z-INDEX: 103; LEFT: 0px; OVERFLOW: auto; WIDTH: 430px; POSITION: absolute; TOP: 0px; HEIGHT: 182px; BACKGROUND-COLOR: gainsboro"
								runat="server"><asp:image id="img01" runat="server"></asp:image></DIV>
							<DIV class="drag" id="divItem4" style="DISPLAY: none; Z-INDEX: 103; LEFT: 0px; OVERFLOW: auto; WIDTH: 360px; POSITION: absolute; TOP: 0px; HEIGHT: 286px; BACKGROUND-COLOR: gainsboro"
								runat="server"><asp:image id="img02" runat="server"></asp:image></DIV>
							<DIV class="drag" id="divItem6" style="DISPLAY: none; Z-INDEX: 103; LEFT: 0px; OVERFLOW: auto; WIDTH: 250px; POSITION: absolute; TOP: 0px; HEIGHT: 141px; BACKGROUND-COLOR: gainsboro"
								runat="server"><asp:image id="img04" runat="server"></asp:image></DIV>								
							<DIV class="drag" id="divItem5" style="DISPLAY: none; Z-INDEX: 103; LEFT: 0px; OVERFLOW: auto; WIDTH: 710px; POSITION: absolute; TOP: 0px; HEIGHT: 281px; BACKGROUND-COLOR: gainsboro"
								runat="server">
								<table height="90%" cellSpacing="0" cellPadding="0" width="100%" bgcolor = "white">
									<tr height="100%">
										<td><asp:image id="img03" runat="server"></asp:image></td>
									</tr>
									<tr>
										<td>
											<table height="100%" cellSpacing="2" cellPadding="0" width="100%">
												<tr>
													<td><asp:label id="lblType" runat="server" Font-Size="XX-Small" Font-Bold="True">Rapor Tipi</asp:label></td>
													<td><cc2:dropdownedit id="cmbType" runat="server" Width="100px" Database_InsertEmptyItem="False" Database_AutoFill="False"
															Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" DataValueField="RECORD_ID"
															DataTextField="EMPLOYEE_NAME" Database_FieldType="None" onchange="fillDateCombos()">
															<asp:ListItem Value="0">G&#252;nl&#252;k</asp:ListItem>
															<asp:ListItem Value="1">Haftalık</asp:ListItem>
															<asp:ListItem Value="2">Aylık</asp:ListItem>
															<asp:ListItem Value="3">D&#246;nemlik</asp:ListItem>
															<asp:ListItem Value="4">Yıllık</asp:ListItem>
														</cc2:dropdownedit></td>
												</tr>
												<tr>
													<td>
														<asp:label id="lblDate" runat="server" Font-Size="XX-Small" Font-Bold="True">Tarih Seçiniz</asp:label></td>
													<td>
													<table height="100%" cellSpacing="0" cellPadding="0">
													<tr>
													<td width = "0" style = "WIDTH: 0">
													<cc2:lightdateedit id="txdDateDay1" runat="server" Database_FieldType="None" Database_WhereType="GreaterThanOrEqual"
															ShowBorder="False" UseMonthNames="False"></cc2:lightdateedit>
														<cc2:dropdownedit id="cmbDateDay1" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable"
															Database_FieldType="None"></cc2:dropdownedit><cc2:dropdownedit id="cmbDateDay2" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" Database_FieldType="None"></cc2:dropdownedit>
															<cc2:dropdownedit id="cmbDateWeek1" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" Database_FieldType="None">
															
															<asp:ListItem Value="1">1. Hafta</asp:ListItem>
															<asp:ListItem Value="2">2. Hafta</asp:ListItem>
															<asp:ListItem Value="3">3. Hafta</asp:ListItem>
															<asp:ListItem Value="4">4. Hafta</asp:ListItem>
															<asp:ListItem Value="5">5. Hafta</asp:ListItem>
															<asp:ListItem Value="6">6. Hafta</asp:ListItem>
															<asp:ListItem Value="7">7. Hafta</asp:ListItem>
															<asp:ListItem Value="8">8. Hafta</asp:ListItem>
															<asp:ListItem Value="9">9. Hafta</asp:ListItem>
															<asp:ListItem Value="10">10. Hafta</asp:ListItem>
															<asp:ListItem Value="11">11. Hafta</asp:ListItem>
															<asp:ListItem Value="12">12. Hafta</asp:ListItem>
															<asp:ListItem Value="13">13. Hafta</asp:ListItem>
															<asp:ListItem Value="14">14. Hafta</asp:ListItem>
															<asp:ListItem Value="15">15. Hafta</asp:ListItem>
															<asp:ListItem Value="16">16. Hafta</asp:ListItem>
															<asp:ListItem Value="17">17. Hafta</asp:ListItem>
															<asp:ListItem Value="18">18. Hafta</asp:ListItem>
															<asp:ListItem Value="19">19. Hafta</asp:ListItem>
															<asp:ListItem Value="20">20. Hafta</asp:ListItem>
															<asp:ListItem Value="21">21. Hafta</asp:ListItem>
															<asp:ListItem Value="22">22. Hafta</asp:ListItem>
															<asp:ListItem Value="23">23. Hafta</asp:ListItem>
															<asp:ListItem Value="24">24. Hafta</asp:ListItem>
															<asp:ListItem Value="25">25. Hafta</asp:ListItem>
															<asp:ListItem Value="26">26. Hafta</asp:ListItem>
															<asp:ListItem Value="27">27. Hafta</asp:ListItem>
															<asp:ListItem Value="28">28. Hafta</asp:ListItem>
															<asp:ListItem Value="29">29. Hafta</asp:ListItem>
															<asp:ListItem Value="30">30. Hafta</asp:ListItem>
															<asp:ListItem Value="31">31. Hafta</asp:ListItem>
															<asp:ListItem Value="32">32. Hafta</asp:ListItem>
															<asp:ListItem Value="33">33. Hafta</asp:ListItem>
															<asp:ListItem Value="34">34. Hafta</asp:ListItem>
															<asp:ListItem Value="35">35. Hafta</asp:ListItem>
															<asp:ListItem Value="36">36. Hafta</asp:ListItem>
															<asp:ListItem Value="37">37. Hafta</asp:ListItem>
															<asp:ListItem Value="38">38. Hafta</asp:ListItem>
															<asp:ListItem Value="39">39. Hafta</asp:ListItem>
															<asp:ListItem Value="40">40. Hafta</asp:ListItem>
															<asp:ListItem Value="41">41. Hafta</asp:ListItem>
															<asp:ListItem Value="42">42. Hafta</asp:ListItem>
															<asp:ListItem Value="43">43. Hafta</asp:ListItem>
															<asp:ListItem Value="44">44. Hafta</asp:ListItem>
															<asp:ListItem Value="45">45. Hafta</asp:ListItem>
															<asp:ListItem Value="46">46. Hafta</asp:ListItem>
															<asp:ListItem Value="47">47. Hafta</asp:ListItem>
															<asp:ListItem Value="48">48. Hafta</asp:ListItem>
															<asp:ListItem Value="49">49. Hafta</asp:ListItem>
															<asp:ListItem Value="50">50. Hafta</asp:ListItem>
															<asp:ListItem Value="51">51. Hafta</asp:ListItem>
															<asp:ListItem Value="52">52. Hafta</asp:ListItem>																																													
															
															</cc2:dropdownedit>															
														<cc2:dropdownedit id="cmbDateTerm1" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable"
															Database_FieldType="None">
															<asp:ListItem Value="1">Ocak - Mart</asp:ListItem>
															<asp:ListItem Value="2">Nisan - Haziran</asp:ListItem>
															<asp:ListItem Value="3">Temmuz - Eylül</asp:ListItem>
															<asp:ListItem Value="4">Ekim - Aralık</asp:ListItem>
														</cc2:dropdownedit>
																					<cc2:dropdownedit id="cmbDateMonth1" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable"
															Database_FieldType="None">
															<asp:ListItem Value="1">Ocak</asp:ListItem>
															<asp:ListItem Value="2">Şubat</asp:ListItem>
															<asp:ListItem Value="3">Mart</asp:ListItem>
															<asp:ListItem Value="4">Nisan</asp:ListItem>
															<asp:ListItem Value="5">Mayıs</asp:ListItem>
															<asp:ListItem Value="6">Haziran</asp:ListItem>
															<asp:ListItem Value="7">Temmuz</asp:ListItem>
															<asp:ListItem Value="8">Ağustos</asp:ListItem>
															<asp:ListItem Value="9">Eyl&#252;l</asp:ListItem>
															<asp:ListItem Value="10">Ekim</asp:ListItem>
															<asp:ListItem Value="11">Kasım</asp:ListItem>
															<asp:ListItem Value="12">Aralık</asp:ListItem>
														</cc2:dropdownedit>
														
													<cc2:dropdownedit id="cmbDateYear1" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" Database_FieldType="None">
															<asp:ListItem Value="2006">2006</asp:ListItem>
															<asp:ListItem Value="2007">2007</asp:ListItem>
															<asp:ListItem Value="2008">2008</asp:ListItem>
															<asp:ListItem Value="2009">2009</asp:ListItem>
														</cc2:dropdownedit>
														
														</td>
													<td>
													<cc2:dropdownedit id="cmbDateWeek2" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" Database_FieldType="None">
															
															
															<asp:ListItem Value="1">1. Hafta</asp:ListItem>
															<asp:ListItem Value="2">2. Hafta</asp:ListItem>
															<asp:ListItem Value="3">3. Hafta</asp:ListItem>
															<asp:ListItem Value="4">4. Hafta</asp:ListItem>
															<asp:ListItem Value="5">5. Hafta</asp:ListItem>
															<asp:ListItem Value="6">6. Hafta</asp:ListItem>
															<asp:ListItem Value="7">7. Hafta</asp:ListItem>
															<asp:ListItem Value="8">8. Hafta</asp:ListItem>
															<asp:ListItem Value="9">9. Hafta</asp:ListItem>
															<asp:ListItem Value="10">10. Hafta</asp:ListItem>
															<asp:ListItem Value="11">11. Hafta</asp:ListItem>
															<asp:ListItem Value="12">12. Hafta</asp:ListItem>
															<asp:ListItem Value="13">13. Hafta</asp:ListItem>
															<asp:ListItem Value="14">14. Hafta</asp:ListItem>
															<asp:ListItem Value="15">15. Hafta</asp:ListItem>
															<asp:ListItem Value="16">16. Hafta</asp:ListItem>
															<asp:ListItem Value="17">17. Hafta</asp:ListItem>
															<asp:ListItem Value="18">18. Hafta</asp:ListItem>
															<asp:ListItem Value="19">19. Hafta</asp:ListItem>
															<asp:ListItem Value="20">20. Hafta</asp:ListItem>
															<asp:ListItem Value="21">21. Hafta</asp:ListItem>
															<asp:ListItem Value="22">22. Hafta</asp:ListItem>
															<asp:ListItem Value="23">23. Hafta</asp:ListItem>
															<asp:ListItem Value="24">24. Hafta</asp:ListItem>
															<asp:ListItem Value="25">25. Hafta</asp:ListItem>
															<asp:ListItem Value="26">26. Hafta</asp:ListItem>
															<asp:ListItem Value="27">27. Hafta</asp:ListItem>
															<asp:ListItem Value="28">28. Hafta</asp:ListItem>
															<asp:ListItem Value="29">29. Hafta</asp:ListItem>
															<asp:ListItem Value="30">30. Hafta</asp:ListItem>
															<asp:ListItem Value="31">31. Hafta</asp:ListItem>
															<asp:ListItem Value="32">32. Hafta</asp:ListItem>
															<asp:ListItem Value="33">33. Hafta</asp:ListItem>
															<asp:ListItem Value="34">34. Hafta</asp:ListItem>
															<asp:ListItem Value="35">35. Hafta</asp:ListItem>
															<asp:ListItem Value="36">36. Hafta</asp:ListItem>
															<asp:ListItem Value="37">37. Hafta</asp:ListItem>
															<asp:ListItem Value="38">38. Hafta</asp:ListItem>
															<asp:ListItem Value="39">39. Hafta</asp:ListItem>
															<asp:ListItem Value="40">40. Hafta</asp:ListItem>
															<asp:ListItem Value="41">41. Hafta</asp:ListItem>
															<asp:ListItem Value="42">42. Hafta</asp:ListItem>
															<asp:ListItem Value="43">43. Hafta</asp:ListItem>
															<asp:ListItem Value="44">44. Hafta</asp:ListItem>
															<asp:ListItem Value="45">45. Hafta</asp:ListItem>
															<asp:ListItem Value="46">46. Hafta</asp:ListItem>
															<asp:ListItem Value="47">47. Hafta</asp:ListItem>
															<asp:ListItem Value="48">48. Hafta</asp:ListItem>
															<asp:ListItem Value="49">49. Hafta</asp:ListItem>
															<asp:ListItem Value="50">50. Hafta</asp:ListItem>
															<asp:ListItem Value="51">51. Hafta</asp:ListItem>
															<asp:ListItem Value="52">52. Hafta</asp:ListItem>																														
															
															</cc2:dropdownedit>
														<cc2:dropdownedit id="cmbDateMonth2" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable"
															Database_FieldType="None">
															<asp:ListItem Value="1">Ocak</asp:ListItem>
															<asp:ListItem Value="2">Şubat</asp:ListItem>
															<asp:ListItem Value="3">Mart</asp:ListItem>
															<asp:ListItem Value="4">Nisan</asp:ListItem>
															<asp:ListItem Value="5">Mayıs</asp:ListItem>
															<asp:ListItem Value="6">Haziran</asp:ListItem>
															<asp:ListItem Value="7">Temmuz</asp:ListItem>
															<asp:ListItem Value="8">Ağustos</asp:ListItem>
															<asp:ListItem Value="9">Eyl&#252;l</asp:ListItem>
															<asp:ListItem Value="10">Ekim</asp:ListItem>
															<asp:ListItem Value="11">Kasım</asp:ListItem>
															<asp:ListItem Value="12">Aralık</asp:ListItem>
														</cc2:dropdownedit>
														
		<cc2:dropdownedit id="cmbDateTerm2" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" Database_FieldType="None">
															<asp:ListItem Value="1">Ocak - Mart</asp:ListItem>
															<asp:ListItem Value="2">Nisan - Haziran</asp:ListItem>
															<asp:ListItem Value="3">Temmuz - Eylül</asp:ListItem>
															<asp:ListItem Value="4">Ekim - Aralık</asp:ListItem>
														</cc2:dropdownedit>
														
													<cc2:dropdownedit id="cmbDateYear2" style="DISPLAY: none" runat="server" Width="100px" Database_InsertEmptyItem="False"
															Database_AutoFill="False" Database_ForeignKeyField="BRANCH_REGION_ID" Database_SelectTableType="FromTable" Database_FieldType="None">
															<asp:ListItem Value="2006">2006</asp:ListItem>
															<asp:ListItem Value="2007">2007</asp:ListItem>
															<asp:ListItem Value="2008">2008</asp:ListItem>
															<asp:ListItem Value="2009">2009</asp:ListItem>
														</cc2:dropdownedit>
														
														<cc2:lightdateedit id="txdDateDay2" runat="server" Database_FieldType="None" Database_WhereType="GreaterThanOrEqual"
															ShowBorder="False" Database_FieldName="DOCUMENT_DATE" Database_TableName="T_INVOICE" UseMonthNames="False"></cc2:lightdateedit>
														</td>
														<td width = "100%">&nbsp;</td>
													</tr>
													
													</table></td>
													
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<TR>
													<TD></TD>
													<TD><INPUT style="FONT-WEIGHT: bold; FONT-SIZE: 11px; FONT-FAMILY: Verdana" onclick="DrawSalesComparisonChart();"
															type="button" value="&nbsp;&nbsp;&nbsp;Çiz&nbsp;&nbsp;&nbsp;"></TD>
												</TR>
												<tr height="2">
												<td>&nbsp;</td>
												<td></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</DIV>
						</td>
						<TD vAlign="top" width="18%"><!-- links -->
							<table cellSpacing="0" cellPadding="0" width="100%">
								<tr>
									<td>
										<table>
											<tr>
												<td><IMG id="btnShowPanel" style="CURSOR: hand" onclick="showPanel();" alt="Kaydet" src="auxiliary/images/showPnl.gif"></td>
												<td></td>
												<td style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><b>&nbsp;&nbsp;Panel</b></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td></td>
								</tr>
								<tr>
									<td>
										<div id="DashboardControlPanel" style="BORDER-RIGHT: black thin solid; BORDER-TOP: black thin solid; DISPLAY: none; BORDER-LEFT: gray thin solid; WIDTH: 100%; BORDER-BOTTOM: gray thin solid; TOP: 50px; HEIGHT: 100%; BACKGROUND-COLOR: gainsboro"
											runat="server">
											<table cellSpacing="0" cellPadding="0" width="100%">
												<tr>
													<td width="40"></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
												</tr>
												<TR>
													<TD><cc2:checkedit id="chkItem1" onclick="drawItems();" runat="server" Font-Bold="True" Database_FieldType="None"
															Visible="False"></cc2:checkedit></TD>
													<td style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><asp:label id="lblItem1" runat="server" Visible="False">En çok sipariş verilen ürünler</asp:label></td>
												</TR>
												<TR>
													<TD><cc2:checkedit id="chkItem2" onclick="drawItems();" runat="server" Font-Bold="True" Database_FieldType="None"
															Visible="False"></cc2:checkedit></TD>
													<td style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><asp:label id="lblItem2" runat="server" Visible="False">En çok sipariş verilen ürünler - ürün grubu bazında</asp:label></td>
												</TR>
												<TR height="20">
													<td><cc2:checkedit id="chkItem3" onclick="drawItems();" runat="server" Font-Bold="True" Database_FieldType="None"
															Visible="False"></cc2:checkedit></td>
													<TD style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><asp:label id="lblItem3" runat="server" Visible="False">Grafik - En çok sipariş verilen ürünler</asp:label></TD>
												</TR>
												<TR>
													<TD><cc2:checkedit id="chkItem4" onclick="drawItems();" runat="server" Font-Bold="True" Database_FieldType="None"
															Visible="False"></cc2:checkedit></TD>
													<TD style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><asp:label id="lblItem4" runat="server" Visible="False">Grafik - En çok sipariş verilen ürünler - ürün grubu bazında</asp:label></TD>
												</TR>
												<TR>
													<TD><cc2:checkedit id="chkItem5" onclick="drawItems();" runat="server" Font-Bold="True" Database_FieldType="None"
															Visible="False"></cc2:checkedit></TD>
													<TD style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><asp:label id="lblItem5" runat="server" Visible="False">Grafik - Dönemsel Satış Karşılaştırmaları</asp:label></TD>
												</TR>
												<TR>
													<TD><cc2:checkedit id="chkItem6" onclick="drawItems();" runat="server" Font-Bold="True" Database_FieldType="None"
															Visible="False"></cc2:checkedit></TD>
													<TD style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana"><asp:label id="lblItem6" runat="server" Visible="False">Grafik - Bayii Ciroları</asp:label></TD>
												</TR>												
												<TR>
													<TD></TD>
													<TD>&nbsp;</TD>
												</TR>
												<TR>
													<td></td>
													<TD align="left"><IMG style="CURSOR: hand" onclick="saveDashBoard();" alt="Kaydet" src="auxiliary/images/save.gif"></TD>
												</TR>
												<tr>
													<td>&nbsp;</td>
													<td></td>
												</tr>
											</table>
										</div>
									</td>
								</tr>
							</table>
						</TD>
					</tr>
				</TBODY>
			</table>
		</form>
		<DIV></DIV></TR></TBODY></TABLE></FORM>
		<DIV></DIV></TR></TBODY></TABLE></FORM>
	</body>
</HTML>
