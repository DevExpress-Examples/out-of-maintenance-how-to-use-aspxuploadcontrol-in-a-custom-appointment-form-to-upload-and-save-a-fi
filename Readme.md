<!-- default file list -->
*Files to look at*:

* [CustomAppointmentForm.ascx](./CS/WebApplication1/CustomControls/CustomAppointmentForm.ascx) (VB: [CustomAppointmentForm.ascx.vb](./VB/WebApplication1/CustomControls/CustomAppointmentForm.ascx.vb))
* [CustomAppointmentForm.ascx.cs](./CS/WebApplication1/CustomControls/CustomAppointmentForm.ascx.cs) (VB: [CustomAppointmentForm.ascx.vb](./VB/WebApplication1/CustomControls/CustomAppointmentForm.ascx.vb))
* [CustomAppointmentFormController.cs](./CS/WebApplication1/CustomControls/CustomAppointmentFormController.cs) (VB: [CustomAppointmentFormController.vb](./VB/WebApplication1/CustomControls/CustomAppointmentFormController.vb))
* [CustomAppointmentFormTemplateContainer .cs](./CS/WebApplication1/CustomControls/CustomAppointmentFormTemplateContainer .cs) (VB: [CustomAppointmentFormTemplateContainer .vb](./VB/WebApplication1/CustomControls/CustomAppointmentFormTemplateContainer .vb))
* [CustomAppointmentSaveCallbackCommand .cs](./CS/WebApplication1/CustomControls/CustomAppointmentSaveCallbackCommand .cs) (VB: [CustomAppointmentSaveCallbackCommand .vb](./VB/WebApplication1/CustomControls/CustomAppointmentSaveCallbackCommand .vb))
* [CustomDataSource.cs](./CS/WebApplication1/CustomDataSource.cs) (VB: [CustomDataSource.vb](./VB/WebApplication1/CustomDataSource.vb))
* [CustomObjects.cs](./CS/WebApplication1/CustomObjects.cs) (VB: [CustomObjects.vb](./VB/WebApplication1/CustomObjects.vb))
* [Default.aspx](./CS/WebApplication1/Default.aspx) (VB: [Default.aspx](./VB/WebApplication1/Default.aspx))
* [Default.aspx.cs](./CS/WebApplication1/Default.aspx.cs) (VB: [Default.aspx](./VB/WebApplication1/Default.aspx))
<!-- default file list end -->
# How to use ASPxUploadControl in a custom Appointment form to upload and save a file content as a custom "byte array" field


To create a custom Edit Appointment form for working with an additional "byte array" field we used the approach described in the following documentation topic:<br /><a href="https://documentation.devexpress.com/#AspNet/CustomDocument5464">How to: Modify the Appointment Editing Form for Working with Custom Fields</a><br /><br />To save an uploaded file's content (an array of bytes of the uploaded file and the file name) in an appointment we assign values of the UploadedFile.FileBytes and UploadedFile.FileName properties with the corresponding appointment's custom fields in the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxUploadControl_FileUploadCompletetopic">ASPxUploadControl.FileUploadComplete</a> event handler.

<br/>


