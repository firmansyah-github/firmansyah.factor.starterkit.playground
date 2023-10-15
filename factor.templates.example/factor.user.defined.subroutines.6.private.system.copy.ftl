====================================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Private System Copy Generation Example -------
====================================================================================================================================
<#--
${PRV_SYS_GEN_PATH|copy-path|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|copy|Please choose one option from this Private Gen type list: one, many, copy}
-->
PRV_SYS_GEN_PATH = ${PRV_SYS_GEN_PATH}
PRV_SYS_GEN_TYPE = ${PRV_SYS_GEN_TYPE}

====================================================================================================================================
A. Copy Generation Type Logic Rule
====================================================================================================================================
1. Applicable for file and folder
2. Copy the file without any modification on file name and its content and paste into Generated Path
3. Copy the folder including all sub folder and any file inside it and paste into Generated Path.
4. Always Replace
5. Applicable Private System Attributes File:
   a. PRV_SYS_GEN_TYPE:
      Private System placeholder for define Generation Type options (one, many, copy)
      If not provided, will using default 'copy' generation
   b. PRV_SYS_GEN_PATH: 
      Private System placeholder for create generated relative path, relative to Root Directory Deployment as base path
      If not provided, will not create any custom path, just be rendered on Root Directory Deployment
6. Other Private System Attributes File will not has impact
7. All The Factor FreeMarker Directives, Predefined Subroutines, User Defined Subroutines, Private System Attributes, Public Attributes,
   Private (File) Attributes will not be replaced by its value, it will not be rendered, it will be as is.

