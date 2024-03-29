# Data Quality Report for Power Bi
Data Quality Report is an open source External Tool to add in Power Bi. It creates a new Power Bi Desktop file from the current one that it's open.
The new file will contain:
- First look on the tables structure and errors/white spaces.
- Understanding the text/date and number distributions of data for each table.
- Getting insights of categorical columns. Most used category for each table.
- Checking how relationships are built.

This tool is perfect for first steps in a new data analytics and science projects. It can help us getting a good understanding of the data we are going to use. Just load the data the customer is talking about in a new Power Bi Desktop File and open the Data Quality Report from External Tools menú.
Understanding the Data Quality is a critical knowledge we need to improve our estimations on a project. Data projects shoulnd't underestimate the time cleaning and transforming data might take.

<a href="https://github.com/ladataweb/data-quality-report/blob/main/LICENSE" target="_blank">License</a>

### Public Preview

Data Quality Report is in public preview. The relase will let install the tool in two ways.
1. <a href="https://github.com/ladataweb/data-quality-report/releases/tag/v0.1">Install file .exe</a>: just click on it and it will decompress the necesary files to have the tool automatically in Power Bi Desktop.
2. <a href="https://github.com/ladataweb/data-quality-report/releases/tag/v0.1">Portable manual version</a>: a set of files with the code and instructions to understand how it works.

### How to use
Open Power Bi Desktop and get data from the sources/tables you want to analyse. You need to get them in import mode. Then just go to "External Tools" in tab and open DataQualityReport.
That will open a new Power Bi Desktop file with the analysis. Navigate it to understand the quality of your data.

### Common issue
We have received issues from some users that get an error while refreshing the data of the tool: 'The 'MSOLAP.8' provider is not registered on the local machine.'
In that case you can get in the following link to install the missing provider: https://learn.microsoft.com/en-us/analysis-services/client-libraries?view=asallproducts-allversions&viewFallbackFrom=sql-server-2017
