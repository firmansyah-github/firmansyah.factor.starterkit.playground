<-- Apache FreeMarker 2.3.26 - Factor Subroutines --------------------------------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Factor Subroutines --------------------------------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Factor Subroutines --------------------------------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Factor Subroutines --------------------------------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Factor Subroutines --------------------------------------------------------------------->
<#--
${PRV_SYS_GEN_PATH|src|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|many|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAMEX|test_rename_file.txt|Private System placeholder for define file name that need to be generated, if required to be different with template name}
${PRV_SYS_JAVA_PACKAGE|test.id.co.factor.[table].[base].[class].[instance]|Private System placeholder for define package name}
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
${PUB_SYS_DTM@int4|go-int4|test}
${PUB_SYS_DTM@text|go-text|test}
${PUB_SYS_DTM@bpchar|go-bpchar|test}
${PUB_SYS_DTM@float4|go-float4|test}
-->


3. Entities - Factor Subroutines -------------------------------------------------------------------------------------->
<#list adv.entities as i>                                                   
  ${i?counter}: 
                tableName                    : ${i.tableName}               
                fieldList                    : 
                <#list i.fieldList as k>
                    ${k?counter}:  
                    fieldType           -->  ${k.fieldType}      
                    fieldName           -->  ${k.fieldName}
                    columnType          -->  ${k.columnType}     
                    columnName          -->  ${k.columnName} 
                </#list>                                                                  
</#list> 


