====================================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Private System Many Generation Example -------
====================================================================================================================================
<#--
${PRV_SYS_GEN_PATH|many-path/main/java/[class]/[table]/[instance]/test/[base]|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|many|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAME|factor.user.defined.subroutines.8.private.system.many.[table].[base].[class].[instance].txt|Private System placeholder for define file name that need to be generated, if required to be different with template name. }
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
${PRV_SYS_JAVA_PACKAGE|id.co.factor.[class].[table].[instance].[base]|Private System placeholder for define package name and auto create directory based on value definition}
-->
PRV_SYS_GEN_PATH 		= ${PRV_SYS_GEN_PATH}
PRV_SYS_GEN_TYPE 		= ${PRV_SYS_GEN_TYPE}
PRV_SYS_GEN_FILENAME 	= ${PRV_SYS_GEN_FILENAME}
PRV_SYS_IS_REPLACE 		= ${PRV_SYS_IS_REPLACE}
PRV_SYS_JAVA_PACKAGE    = ${PRV_SYS_JAVA_PACKAGE}

====================================================================================================================================
A. Many Generation Type Logic Rule
====================================================================================================================================
1. Applicable for file and not for folder
2. Folder will always Copy Operation
3. File Name Handling:
   a. Remove '.ftl' file extension if has in last file name. e.g. Person.java.ftl will become Person.java
   b. File name may have placeholder, e.g. [phType]Model.java.ftl or Domain[phType]DTO.java.ftl
	  [phType] options are:
      [table] 	: replaced by Table Name
      [base]  	: replaced by Base Name
      [class] 	: replaces by Class Name
      [instance]: replaced by Instance Name
4. Applicable Private System Attributes File:
   a. PRV_SYS_GEN_TYPE:
      Private System placeholder for define Generation Type options (one, many, copy)
      If not provided, will using default 'copy' generation
   b. PRV_SYS_GEN_PATH: 
      Private System placeholder for create generated relative path, relative to Root Directory Deployment as base path
      If not provided, will not create any custom path, just be rendered on Root Directory Deployment
      Auto create directory based on value definition 
      [table] 	: replaced by Table Name
      [base]  	: replaced by Base Name
      [class] 	: replaces by Class Name
      [instance]: replaced by Instance Name
   c. PRV_SYS_GEN_FILENAME:
      Private System placeholder for define file name that need to be generated, if required to be different with template name. 
	  Remove '.ftl' file extension if has in last file name.
	  If not provided, will using as is filename
      File name may have placeholder
   d. PRV_SYS_IS_REPLACE:
      Private System placeholder for replace file (true or false), if false then it will create additional suffix on its file name
      If not provided, will using default 'false'
   e. PRV_SYS_JAVA_PACKAGE:
      Private System placeholder for define package name and auto create directory based on value definition 
      e.g. id.co.factor.[table].[base].[class].[instance]
      [table] 	: replaced by Table Name
      [base]  	: replaced by Base Name
      [class] 	: replaces by Class Name
      [instance]: replaced by Instance Name
5. All The Factor FreeMarker Directives, Predefined Subroutines, User Defined Subroutines, Private System Attributes, Public Attributes,
   Private (File) Attributes will be replaced by its value, it will be rendered, it will be changed.
