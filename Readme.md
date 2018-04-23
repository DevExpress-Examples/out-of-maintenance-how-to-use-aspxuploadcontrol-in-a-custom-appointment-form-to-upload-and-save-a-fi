# How to use ASPxUploadControl in a custom Appointment form to upload and save a file content as a custom "byte array" field


To create a custom Edit Appointment form for working with an additional "byte array" field we used the approach described in the following documentation topic:<br /><a href="https://documentation.devexpress.com/#AspNet/CustomDocument5464">How to: Modify the Appointment Editing Form for Working with Custom Fields</a><br /><br />To save an uploaded file's content (an array of bytes of the uploaded file and the file name) in an appointment we assign values of the UploadedFile.FileBytes and UploadedFile.FileName properties with the corresponding appointment's custom fields in the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxUploadControl_FileUploadCompletetopic">ASPxUploadControl.FileUploadComplete</a> event handler.

<br/>


