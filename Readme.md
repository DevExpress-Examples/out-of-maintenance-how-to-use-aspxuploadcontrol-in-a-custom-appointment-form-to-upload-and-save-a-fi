<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128547777/15.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T213111)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [CustomAppointmentForm.ascx](./CS/WebApplication1/CustomControls/CustomAppointmentForm.ascx) (VB: [CustomAppointmentForm.ascx](./VB/WebApplication1/CustomControls/CustomAppointmentForm.ascx))
* [CustomAppointmentForm.ascx.cs](./CS/WebApplication1/CustomControls/CustomAppointmentForm.ascx.cs) (VB: [CustomAppointmentForm.ascx.vb](./VB/WebApplication1/CustomControls/CustomAppointmentForm.ascx.vb))
* [CustomAppointmentFormController.cs](./CS/WebApplication1/CustomControls/CustomAppointmentFormController.cs) (VB: [CustomAppointmentFormController.vb](./VB/WebApplication1/CustomControls/CustomAppointmentFormController.vb))
* [CustomAppointmentFormTemplateContainer .cs](./CS/WebApplication1/CustomControls/CustomAppointmentFormTemplateContainer .cs) (VB: [CustomAppointmentFormTemplateContainer .vb](./VB/WebApplication1/CustomControls/CustomAppointmentFormTemplateContainer .vb))
* [CustomAppointmentSaveCallbackCommand .cs](./CS/WebApplication1/CustomControls/CustomAppointmentSaveCallbackCommand .cs) (VB: [CustomAppointmentSaveCallbackCommand .vb](./VB/WebApplication1/CustomControls/CustomAppointmentSaveCallbackCommand .vb))
* [CustomDataSource.cs](./CS/WebApplication1/CustomDataSource.cs) (VB: [CustomDataSource.vb](./VB/WebApplication1/CustomDataSource.vb))
* [CustomObjects.cs](./CS/WebApplication1/CustomObjects.cs) (VB: [CustomObjects.vb](./VB/WebApplication1/CustomObjects.vb))
* [Default.aspx](./CS/WebApplication1/Default.aspx) (VB: [Default.aspx](./VB/WebApplication1/Default.aspx))
* [Default.aspx.cs](./CS/WebApplication1/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebApplication1/Default.aspx.vb))
<!-- default file list end -->
# How to use ASPxUploadControl in a custom Appointment form to upload and save a file content as a custom "byte array" field
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t213111/)**
<!-- run online end -->


To create a custom Edit Appointment form for working with an additional "byte array" field we used the approach described in the following documentation topic:<br /><a href="https://documentation.devexpress.com/#AspNet/CustomDocument5464">How to: Modify the Appointment Editing Form for Working with Custom Fields</a><br /><br />To save an uploaded file's content (an array of bytes of the uploaded file and the file name) in an appointment we assign values of the UploadedFile.FileBytes and UploadedFile.FileName properties with the corresponding appointment's custom fields in the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxUploadControl_FileUploadCompletetopic">ASPxUploadControl.FileUploadComplete</a> event handler.

<br/>


