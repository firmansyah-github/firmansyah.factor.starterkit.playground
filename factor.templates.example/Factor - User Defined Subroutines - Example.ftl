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
-->

1. Database - Factor Subroutines -------------------------------------------------------------------------------------->
<#noparse>${dbs.catalog}</#noparse>                       -->                     ${dbs.catalog}
                                                                                  
<#noparse><#list dbs.catalogs as i>                                                         
  ${i?counter}: ${i}                                                                
</#list> </#noparse> -->
<#list dbs.catalogs as i>                                                         
  ${i?counter}: ${i}                                                                
</#list>                                                                         
                                                                                  
<#noparse>${dbs.create?c}</#noparse>                       -->                    ${dbs.create?c}
                                                                                  
<#noparse>${dbs.driverClassName}</#noparse>                       -->             ${dbs.driverClassName}
                                                                                  
<#noparse>${dbs.driverFile}</#noparse>                       -->                  ${dbs.driverFile}
                                                                                  
<#noparse>${dbs.name}</#noparse>                       -->                        ${dbs.name}
                                                                                  
<#noparse>${dbs.password}</#noparse>                       -->                    ${dbs.password}
                                                                                  
<#noparse>${dbs.profileName}</#noparse>                       -->                 ${dbs.profileName}
                                                                                  
<#noparse>${dbs.schema}</#noparse>                       -->                      ${dbs.schema}
                                                                                  
<#noparse><#list dbs.schemas as i>                                                          
  ${i?counter}: ${i}                                                                
</#list> </#noparse> 
<#list dbs.schemas as i>                                                          
  ${i?counter}: ${i}                                                                
</#list>                                                                        
                                                                                  
<#noparse>${dbs.tablePattern}</#noparse>                       -->                ${dbs.tablePattern}
                                                                                  
<#noparse>${dbs.tableType}</#noparse>                       -->                   ${dbs.tableType}
                                                                                  
<#noparse><#list dbs.tableTypes as i>                                                       
  ${i?counter}: ${i}                                                                
</#list> </#noparse>  
<#list dbs.tableTypes as i>                                                       
  ${i?counter}: ${i}                                                                
</#list>                                                                       
                                                                                  
<#noparse><#list dbs.tableTypesList as i>                                                   
  ${i?counter}: ${i}                                                                
</#list> </#noparse>  
<#list dbs.tableTypesList as i>                                                   
  ${i?counter}: ${i}                                                                
</#list>                                                                       
                                                                                  
<#noparse>${dbs.url}</#noparse>                       -->                         ${dbs.url}
                                                                                  
<#noparse>${dbs.user}</#noparse>                       -->                        ${dbs.user}


2. Generation - Factor Subroutines ------------------------------------------------------------------------------------>
<#noparse>${adv.buildDate?datetime}</#noparse>    -->                         ${adv.buildDate?datetime}
                                                                              
<#noparse>${adv.comment}</#noparse>    -->                                    ${adv.comment}
                                                                              
<#noparse>${adv.generation.create?c}</#noparse>    -->                        ${adv.generation.create?c}
                                                                              
<#noparse>${adv.generation.outputDir?has_content?c}</#noparse>    -->         ${adv.generation.outputDir?has_content?c}
                                                                              
<#noparse>${adv.generation.packageName?has_content?c}</#noparse>    -->       ${adv.generation.packageName?has_content?c}
                                                                              
<#noparse>${adv.generation.rootDir}</#noparse>    -->                         ${adv.generation.rootDir}
                                                                              
<#noparse>${adv.generation.specifyTemplateDir?c}</#noparse>    -->            ${adv.generation.specifyTemplateDir?c}
                                                                              
<#noparse>${adv.generation.superClassName?has_content?c}</#noparse>    -->    ${adv.generation.superClassName?has_content?c}
                                                                              
<#noparse>${adv.generation.templateDir}</#noparse>    -->                     ${adv.generation.templateDir}


3. Entities - Factor Subroutines -------------------------------------------------------------------------------------->
<#list adv.entities as i>                                                   
  ${i?counter}: 
                baseName          : ${i.baseName}
                className         : ${i.className}
                allFieldSelection : ${i.allFieldSelection?c}
                create            : ${i.create?c} 
                emptyBaseName     : ${i.emptyBaseName?c}
                emptyTableName    : ${i.emptyTableName?c} 
                exportedKeys      :
                <#list i.exportedKeys as m>
                    pkTableName      : ${m.pkTableName}
                    pkBaseName       : ${m.pkBaseName}
                    pkColumnName     : ${m.pkColumnName}
                    fkTableName      : ${m.fkTableName}
                    fkBaseName       : ${m.fkBaseName}
                    fkColumnName     : ${m.fkColumnName}
                    fkSequence       : ${m.fkSequence}
                    updateRule       : ${m.updateRule}
                    deleteRule       : ${m.deleteRule}
                    fkName           : ${m.fkName}
                    pkName           : ${m.pkName}
                    create           : ${m.create?c}
                    exported         : ${m.exported!false?c}
                    selected         : ${m.selected!false?c}
                </#list>  
                attachFileFieldList :
                <#list i.attachFileFieldList as j>
                    ${j}
                </#list> 
                fieldList                    : 
                <#list i.fieldList as k>
                    create              -->  ${k.create?c}         
                    lob                 -->  ${k.lob?c}            
                    nullable            -->  ${k.nullable?c}       
                    pkPosition          -->  ${k.pkPosition}     
                    fieldType           -->  ${k.fieldType}      
                    fieldName           -->  ${k.fieldName}      
                    columnSize          -->  ${k.columnSize}     
                    columnType          -->  ${k.columnType}     
                    columnName          -->  ${k.columnName}     
                    remarks             -->  ${k.remarks!'null'}        
                    autoincrement       -->  ${k.autoincrement?c}  
                    ordinalPosition     -->  ${k.ordinalPosition}
                    columnDataType      -->  ${k.columnDataType}
                    attachFileType      -->  ${k.attachFileType?c}
                    emptyColumnName      -->  ${k.emptyColumnName?c}
                    emptyColumnType      -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName      -->  ${k.firstCapFieldName}
                    getterMethodName      -->  ${k.getterMethodName}
                    haveSpaceColumnName      -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType      -->  ${k.haveSpaceColumnType?c}
                    lob      -->  ${k.lob?c}
                    nullValue      -->  ${k.nullValue!'null'}
                    nullable      -->  ${k.nullable?c}
                    primitiveType      -->  ${k.primitiveType?c}
                    reservedFieldName      -->  ${k.reservedFieldName?c}
                    setterMethodName      -->  ${k.setterMethodName}
                    simpleFieldType      -->  ${k.simpleFieldType}
                    simpleObjectClassName      -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod      -->  ${k.toPrimitiveMethod!'null'}
                    validColumnSize      -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      -->  ${k.validNullable?c}
                    validPatternFieldName      -->  ${k.validPatternFieldName?c}
                    validPatternFieldType      -->  ${k.validPatternFieldType?c}
                    
                     
                </#list> 
                fieldListExceptLob           : 
                <#list i.fieldListExceptLob as l>
                    ${l}
                </#list> 
                fullPackageName              : ${i.fullPackageName}
                haveSpaceTableName           : ${i.haveSpaceTableName?c}
                importClassNameList          : 
                <#list i.importClassNameList as n>
                    ${n}
                </#list> 
                importDeclarations           :
                <#list i.importDeclarations as o>
                    ${o}
                </#list>
                importedKeys                 : 
                <#list i.importedKeys as p>
                    ${p}
                </#list>
                instanceName                 : ${i.instanceName}
                packageName                  : ${i.packageName!'null'}
                primaryKeyFieldList          : 
                <#list i.primaryKeyFieldList as q>
                    ${q}
                </#list>
                remarks                      : ${i.remarks!'null'}
                reservedWordBaseName         : ${i.reservedWordBaseName?c}
                selected                     : ${i.selected?c}
                tableName                    : ${i.tableName}
                <#list i.toStringFieldList as r>
                    ${r}
                </#list>
                
                validPatternBaseName         : ${i.validPatternBaseName?c}
                Test: : ${i.getTest('${i.tableName}')}
                
                                                                            
</#list> 


