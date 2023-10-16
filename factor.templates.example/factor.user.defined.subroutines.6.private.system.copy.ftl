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
1. Applicable to both files and folders.
2. Copy the file without making any changes to its name or content, and paste it into the specified "Generated Path."
3. Copy the entire folder, including all subfolders and files within it, and paste it into the specified "Generated Path."
4. Always perform a replacement.
5. Applicable to private system attributes of files:
   a. PRV_SYS_GEN_TYPE:
      - A private system attribute used to define generation type options (e.g., one, many, copy). Used 'copy' for this case.
      - If not provided, the default generation type is 'copy.'
   b. PRV_SYS_GEN_PATH:
      - A private system attribute used to create a generated relative path relative to the root directory deployment as the base path.
      - If not provided, no custom path will be created, and it will be rendered on the root directory deployment.
6. Other private system attributes of files will not have an impact.
7. All Factor FreeMarker Directives, Predefined Subroutines, User-Defined Subroutines, Public and Private System Attributes, Public Attributes, and Private (File) Attributes will not be replaced by their values. They will be rendered as is.
