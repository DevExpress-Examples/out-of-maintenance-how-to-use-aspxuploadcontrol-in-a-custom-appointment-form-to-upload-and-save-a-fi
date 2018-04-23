using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.XtraScheduler;

namespace WebApplication1.CustomControls {
    public partial class CustomAppointmentForm : System.Web.UI.UserControl {
        protected void Page_Load(object sender, EventArgs e) {

        }

        public override void DataBind() {
            base.DataBind();
            CustomAppointmentFormTemplateContainer container = (CustomAppointmentFormTemplateContainer)Parent;
            ASPxTextBoxSubject.Text = container.Subject;
            ASPxDateEditStart.Value  = container.Start;
            ASPxDateEditEnd.Value = container.End;
            ASPxMemoDescription.Text = container.Description;
            ASPxTextBoxCustomInfo.Text = container.CustomInfoField;

            ASPxLabelFileName.Text = container.CustomAttachmentFileName;

            ASPxButtonOk.ClientSideEvents.Click = container.SaveHandler;
            ASPxButtonCancel.ClientSideEvents.Click = container.CancelHandler;
            ASPxButtonDelete.ClientSideEvents.Click = container.DeleteHandler;
        }

        protected void ASPxUploadControl1_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e) {
            Session["AppointmentAttachment"] = e.UploadedFile.FileBytes;
            Session["AppointmentAttachmentFileName"] = e.UploadedFile.FileName;

            //CustomAppointmentFormTemplateContainer container = (CustomAppointmentFormTemplateContainer)Parent;
            //container.FormController.EditedAppointmentCopy.CustomFields["AppointmentAttachment"] = e.UploadedFile.FileBytes;
            //container.FormController.EditedAppointmentCopy.CustomFields["AppointmentAttachmentFileName"] = e.UploadedFile.FileName;

            

            ASPxUploadControl1.JSProperties["cpUploadedFileName"] = e.UploadedFile.FileName;
        }
    }
}