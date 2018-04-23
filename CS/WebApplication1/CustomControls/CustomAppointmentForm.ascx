<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomAppointmentForm.ascx.cs" Inherits="WebApplication1.CustomControls.CustomAppointmentForm" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<div>
    <table>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabelSubject" runat="server" Text="Subject:" />
            </td>
            <td class="auto-style1">
                <dx:ASPxTextBox ID="ASPxTextBoxSubject" ClientInstanceName="TextBoxSubject" Width="600" runat="server">
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabelStart" runat="server" Text="Start:" />
            </td>
            <td>
                <dx:ASPxDateEdit ID="ASPxDateEditStart" EditFormat="DateTime" ClientInstanceName="DateEditStart" Width="200" runat="server">
                </dx:ASPxDateEdit>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabelEnd" runat="server" Text="End:" />
            </td>
            <td>
                <dx:ASPxDateEdit ID="ASPxDateEditEnd" EditFormat="DateTime" ClientInstanceName="DateEditStart" Width="200" runat="server">
                </dx:ASPxDateEdit>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabelDescription" runat="server" Text="Description:" />
            </td>
            <td>
                <dx:ASPxMemo ID="ASPxMemoDescription" ClientInstanceName="TextBoxDescription" Width="100%" Height="100px" runat="server">
                </dx:ASPxMemo>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabelCustomInfo" runat="server" Text="Custom Info:" />
            </td>
            <td>
                <dx:ASPxTextBox ID="ASPxTextBoxCustomInfo" ClientInstanceName="TextBoxCustomInfo" Width="100%" runat="server">
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Custom attachment:" />
            </td>
            <td>
                <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" ShowUploadButton="true" UploadMode="Auto" Width="280px" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete">
                    <ClientSideEvents FileUploadComplete="function (s, e) { ClientLabelFileName.SetText(s.cpUploadedFileName); }" />
                </dx:ASPxUploadControl>
                <dx:ASPxLabel ID="ASPxLabelFileName" runat="server" Text="" Font-Bold="true" ClientInstanceName="ClientLabelFileName" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <table>
                    <tr>
                        <td>
                            <dx:ASPxButton ID="ASPxButtonOk" ClientInstanceName="ButtonOk" runat="server" Text="Ok" Width="100" AutoPostBack="false">
                            </dx:ASPxButton>

                        </td>
                        <td>
                            <dx:ASPxButton ID="ASPxButtonCancel" ClientInstanceName="ButtonCancel" runat="server" Text="Cancel" Width="100" AutoPostBack="false">
                            </dx:ASPxButton>

                        </td>
                        <td>
                            <dx:ASPxButton ID="ASPxButtonDelete" ClientInstanceName="ButtonDelete" runat="server" Text="Delete" Width="100" AutoPostBack="false">
                            </dx:ASPxButton>
                        </td>

                    </tr>
                </table>


            </td>
        </tr>
    </table>
</div>
