﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerUpdate.aspx.cs" Inherits="WymaTimesheetWebApp.ManagerUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Timesheet Update</title>
    <link rel="icon" type="image/png" href="Images/favicon.png"/>
    <link rel="stylesheet" type="text/css" href="CSS/Wyma_Webapp_SS.css" />
    <script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>
    
</head>
<body>
     <form id="MVS" runat="server">
    <div id="Outerrap">
        <!-- This Header contains the wyma logo -->
        <div id="HeaderRap">
            <div id="Header">
                <img id="WymaLogo" src="Images/wyma-logo.svg" style="height: 76px; width: 295px; margin-bottom: 0px; margin-top: 0px;"/>

                <div id="HeaderLabel" class="Text" >
                    <label  draggable="false">Managers View Screen</label>
                </div>

            </div>
        </div>

         <div id="Main" >
                <div id="Data">   
                   <div>
                       <div style="text-align:center; margin-bottom:25px; " class="border">
                            <div id="TD_Info" >
                                <p>
                                    <label class="Text">Manager Name: </label>
                                    <label runat="server" id="ManagerName" class="Text"></label>
                                </p>
                                <p>
                                    <asp:label runat="server" ID="NameViewLabel" CssClass="Text" Text="Employee Name:"></asp:label>
                                </p>

                                <p>
                                    <asp:label runat="server" ID="DateViewLabel"  CssClass="Text" Text="Date Submited:"></asp:label>
                                </p>

                                <p>
                                    <asp:label runat="server" ID="TotalHoursLabel"  CssClass="Text" Text="Total Hours Worked:"></asp:label>
                                </p>
                                <p>
                                    <asp:label runat="server" ID="TotalAppLabel"  CssClass="Text" Text="Total Hours Applied:"></asp:label>
                                </p>

                            </div>
                    </div>
                    
                </div>
                    <br/>
                    <div id="FileList">
                        <asp:GridView ID="UpdateView" runat="server" OnRowCommand="EditRow_RowCommand" CssClass="Text" HeaderStyle-BorderWidth="2px" >
                            <Columns>
                                <asp:TemplateField HeaderText="Edit Row">
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="viewBtn" Text="Edit" CssClass="Text" Font-Size="X-Large" Height="100px" Width="200px" CommandName="EditTimeSheet" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                            
                    </div>
                    <div id="SignPad">
                        <asp:Label runat="server" ID="signLabel" Visible="false" CssClass="Text" Text="Sign Here:"></asp:Label>
                        <br />
                        <input runat="server" type="hidden" name="hiddenfield" id="hiddenfield" value="" />

                        <canvas runat="server" visible="false" id="sigPad" style="border: thin solid #000000; max-height: inherit; max-width: inherit;"></canvas>
                        <script src="js/sig-pad.js"></script>

                        <br />
                        <button runat="server" visible="false" id="clearBtn" onclick="clearSig();">Clear</button>
                        <script src="js/sig-pad.js"></script>
                    </div>
                </div>
        </div>
            
        <div id="FooterRap">
            <div id="Footer1">

                    <button runat="server" id="btnAcceptMU" class="btnsubmit" visible="false" onserverclick="BtnAcceptMU">Done</button>
            </div>
            <div id="Footer2">

                <button runat="server" id="btnBackMU" class="btncancel"  onserverclick="BtnBackMU">Back</button>

            </div>
        </div>
    </div>
    </form>
</body>
</html>