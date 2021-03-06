﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site.master" AutoEventWireup="true" CodeFile="FEE_REGISTER.aspx.cs" Inherits="WebForms_FEE_REGISTER" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style7
        {
            font-family: Calibri;
            font-size: 14px;
            font-weight: normal;
            font-style: normal;
            text-transform: none;
            color: #006600;
            width: 15%;
        }
        .style8
        {
            width: 104px;
        }
    </style>
    <script type="text/javascript">
        function PrintGridData() {
            var prtGrid = document.getElementById('<%=gvRecords.ClientID %>');
            var prtwin = window.open('', 'PrintGridView',
'left=0,top=0,width=1,height=1,tollbar=0,scrollbars=1,status=0');
            prtwin.document.write(prtGrid.outerHTML);
            prtwin.document.close();
            prtwin.focus();
            prtwin.print();
            prtwin.close();
        }
   </script>
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
        <asp:Panel ID="mainPanel" runat="server">
            <table cellpadding="0" cellspacing="5" width="90%" border="0" style="border-color: Black;">
                <tr>
                    <td valign="bottom" colspan="5" align="left" 
                        
                        
                        style="color: #FFAB60; font-family: Calibri;
                        letter-spacing: 1px; font-weight: bold; font-size: 18px; border-bottom: solid 2px #FFAB60;">
                        <div style="background-color: #FFFF99; border-top: 2px solid #FFAB60; border-left: 2px solid #FFAB60;
                            border-right: 2px solid #FFAB60; border-top-left-radius: 25px 50px; border-top-right-radius: 25px 50px;
                            width: 310px; height: 25px; padding-left: 8px;">
                            FEE REGISTER</div>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <br />
                    </td>
                </tr>
                <tr>
                    <%--<td class="style7" style="padding-left: 15px; letter-spacing: 1px;">
                        COMPONENT
                    <asp:RequiredFieldValidator ID="v1" runat="server" ControlToValidate="ddlComponenetList"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="rv"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style8">
                        :<asp:DropDownList ID="ddlComponenetList" runat="server" AutoPostBack="true" SkinID="longest"
                            onselectedindexchanged="ddlComponenetList_SelectedIndexChanged" 
                            Height="22px" Width="147px">
                        </asp:DropDownList>
&nbsp;</td>
                    <td class="Calibri14N" style="padding-left: 10px;
                        width: 50%" colspan="3">
                    </td>--%>
                </tr>
              
                <tr>
                    <td class="style7" style="padding-left: 15px; letter-spacing: 1px;"  >

 Component

                    </td>
                    <td class="style7" style="padding-left: 15px; letter-spacing: 1px;">

                    <asp:DropDownList ID="ddlclass" runat="server"></asp:DropDownList>
                        </td>
                    <td colspan="2" align="center">

 <asp:ImageButton ID="btnGetDetails" runat="server" Height="28px" 
                            ImageUrl="~/images/submit.jpg" ValidationGroup="rv" Width="83px" 
                            onclick="btnGetDetails_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" style="padding-left: 15px; letter-spacing: 1px;">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style7" style="padding-left: 10px; ">
                       
                    </td>
                    <td class="Calibri14N" style="padding-left: 10px;
                        width: 50%" colspan="2">
                        <asp:ImageButton ID="dwnExlFile" runat="server" Visible="false" 
                            ImageUrl="~/images/excel-logo.jpg" Height="25px" Width="25px" 
                            onclick="dwnExlFile_Click" /> </td>
                    <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick="PrintGridData();" />

                </tr>
                <tr>
                    <td style="padding-left: 15px; letter-spacing: 1px;" class="style7">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style7" style="padding-left: 10px; ">
                        &nbsp;</td>
                    <td class="Calibri14N" style="padding-left: 10px;
                        width: 50%" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5" 
                        style="padding-top: 4px; padding-bottom: 4px; padding-left: 1px;">
                        <asp:GridView ID="gvRecords" runat="server" AutoGenerateColumns="False" OnRowCreated="gvRecords_RowCreated"
                         BackColor="White" BorderColor="#FFAB60" BorderStyle="None" HeaderStyle-Font-Size="Larger" BorderWidth="1px" ShowFooter="true"
                            CellPadding="1" ForeColor="Black" GridLines="Both" Width="100%"  OnSelectedIndexChanged="gvRecords_SelectedIndexChanged">
                            <Columns>
                               
                                <asp:TemplateField HeaderText="SNO">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ADM NO" HeaderText="A.NO" ItemStyle-HorizontalAlign="Left" />
                                <asp:BoundField DataField="STUDENT NAME" HeaderText="STUDENT NAME" ItemStyle-HorizontalAlign="Left"/>
                                <asp:BoundField DataField="FATHER NAME" HeaderText="FATHER NAME" ItemStyle-HorizontalAlign="Left"/>
                                <asp:BoundField DataField="MONTH NAME" HeaderText="PAID UPTO" ItemStyle-HorizontalAlign="Left"/>

                               
                               
                                
        


                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#E6E6FA" Font-Size="Larger" Font-Bold="true" ForeColor="black" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" Font-Size="Larger" Font-Names="calibri" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="FALSE" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                    </td>
                </tr>
               
                
            </table>
        </asp:Panel>
    </div>
</asp:Content>

