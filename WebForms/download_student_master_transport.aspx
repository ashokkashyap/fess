﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site.master" AutoEventWireup="true" CodeFile="download_student_master_transport.aspx.cs" Inherits="WebForms_download_student_master_transport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
       
            <table cellpadding="0" cellspacing="0" width="90%">
                <tr>
                    <td valign="bottom" align="left" style="color:#FFAB60; font-family:Calibri; letter-spacing:1px; font-weight:bold; font-size:18px; border-bottom:solid 2px #FFAB60;">
                        <div style="background-color:#FFFF99; border-top:2px solid #FFAB60; border-left:2px solid #FFAB60; border-right:2px solid #FFAB60; border-top-left-radius:25px 50px; border-top-right-radius:25px 50px; width:332px; height:25px; padding-left:8px;">
                            Download Student Master (Transport)
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="center">Class:<asp:DropDownList ID="ddlSelectClass" runat="server" 
                            onselectedindexchanged="ddlclass_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                        <%--<br />
                        <table cellpadding="0" cellspacing="2" border="1" style="border-color:#FFAB60; border-bottom:0px; width:100%; background-color:White;">
                            <tr>
                                <td align="center" style="background-color:#FFFF99; Color:Black; font-family:Calibri; font-size:14px; font-weight:bold; border-bottom:0px;">Select Field(s)
                                </td>
                            </tr>
                        </table>
                        <asp:ListView ID="lvRecords" runat="server" ItemPlaceholderID="td1" GroupItemCount="6" GroupPlaceholderID="tr1" EnableViewState="true">
                            <LayoutTemplate>
                                <table id="t1" runat="server" border="1" style="border-color:#FFAB60" width="100%">
                                    <tr id="tr1" runat="server">
                                        
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <tr>
                                    <td id="td1" runat="server">
                                    </td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td style="background-color:white; Color:Black; font-family:Calibri; font-size:11px; font-weight:normal;">
                                    <asp:CheckBox ID="cbField" runat="server" Text='<%#Eval("COLUMN_NAME") %>' />
                                </td>
                            </ItemTemplate>
                        </asp:ListView>
                        <br />
                        <table cellpadding="0" cellspacing="2" border="1" style="border-color:#FFAB60; border-bottom:0px; width:100%; background-color:White;">
                            <tr>
                                <td align="center" style="background-color:#FFFF99; Color:Black; font-family:Calibri; font-size:14px; font-weight:bold; border-bottom:0px;">Select Class(es)
                                </td>
                            </tr>
                        </table>
                        <asp:ListView ID="lvClassList" runat="server" ItemPlaceholderID="td2" GroupItemCount="15" GroupPlaceholderID="tr2" EnableViewState="true">
                            <LayoutTemplate>
                                <table id="t2" runat="server" border="1" style="border-color:#FFAB60" width="100%">
                                    <tr id="tr2" runat="server">
                                        
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <tr>
                                    <td id="td2" runat="server">
                                    </td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td style="background-color:white; Color:Black; font-family:Calibri; font-size:11px; font-weight:normal;">
                                    <asp:CheckBox ID="cbField" runat="server" Text='<%#Eval("CLS") %>' />
                                    <asp:HiddenField ID="hfClassCode" runat="server" Value='<%#Eval("CLASS_CODE") %>' />
                                </td>
                            </ItemTemplate>
                        </asp:ListView>
                        <br />--%>
                        <%--<asp:Button ID="btnDownloadExcel" runat="server" Text="Download" OnClick="btnDownloadExcel_Click"/>--%>
                    </td>
                </tr>
            </table>
       
    </div>
</asp:Content>

