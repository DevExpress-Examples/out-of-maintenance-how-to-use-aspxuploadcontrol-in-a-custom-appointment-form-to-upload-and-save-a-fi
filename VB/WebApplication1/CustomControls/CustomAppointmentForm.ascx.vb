Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.XtraScheduler

Namespace WebApplication1.CustomControls
	Partial Public Class CustomAppointmentForm
		Inherits System.Web.UI.UserControl
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Public Overrides Overloads Sub DataBind()
			MyBase.DataBind()
			Dim container As CustomAppointmentFormTemplateContainer = CType(Parent, CustomAppointmentFormTemplateContainer)
			ASPxTextBoxSubject.Text = container.Subject
			ASPxDateEditStart.Value = container.Start
			ASPxDateEditEnd.Value = container.End
			ASPxMemoDescription.Text = container.Description
			ASPxTextBoxCustomInfo.Text = container.CustomInfoField

			ASPxLabelFileName.Text = container.CustomAttachmentFileName

			ASPxButtonOk.ClientSideEvents.Click = container.SaveHandler
			ASPxButtonCancel.ClientSideEvents.Click = container.CancelHandler
			ASPxButtonDelete.ClientSideEvents.Click = container.DeleteHandler
		End Sub

		Protected Sub ASPxUploadControl1_FileUploadComplete(ByVal sender As Object, ByVal e As DevExpress.Web.FileUploadCompleteEventArgs)
			Session("AppointmentAttachment") = e.UploadedFile.FileBytes
			Session("AppointmentAttachmentFileName") = e.UploadedFile.FileName

			'CustomAppointmentFormTemplateContainer container = (CustomAppointmentFormTemplateContainer)Parent;
			'container.FormController.EditedAppointmentCopy.CustomFields["AppointmentAttachment"] = e.UploadedFile.FileBytes;
			'container.FormController.EditedAppointmentCopy.CustomFields["AppointmentAttachmentFileName"] = e.UploadedFile.FileName;



			ASPxUploadControl1.JSProperties("cpUploadedFileName") = e.UploadedFile.FileName
		End Sub
	End Class
End Namespace