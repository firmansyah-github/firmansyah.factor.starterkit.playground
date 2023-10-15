<#--
${PRV_SYS_GEN_PATH|user-defined-subroutines|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|one|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAME|factor.user.defined.subroutines.4.entity.field.pk.fk.txt|Private System placeholder for define file name that need to be generated, if required to be different with template name}
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
-->



=====================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Entity, Field, PK, FK Example -------
=====================================================================================================================
=====================================================================================================================
A. Entity, Field, PK, FK - Factor Subroutines -----------------------------------------------------------------------
=====================================================================================================================

=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#list adv.entities as i>                                                   
  	${i?counter}: 
                baseName          	: ${i.baseName}
                className         	: ${i.className}
                allFieldSelection 	: ${i.allFieldSelection?c}
                create            	: ${i.create?c} 
                emptyBaseName     	: ${i.emptyBaseName?c}
                emptyTableName    	: ${i.emptyTableName?c}
                fullPackageName     : ${i.fullPackageName}
                haveSpaceTableName  : ${i.haveSpaceTableName?c} 
                instanceName        : ${i.instanceName}
                packageName         : ${i.packageName!'null'}
                remarks             : ${i.remarks!'null'}
                reservedWordBaseName  : ${i.reservedWordBaseName?c}
                selected            : ${i.selected?c}
                tableName           : ${i.tableName}
                validPatternBaseName  : ${i.validPatternBaseName?c}
                hasAttachFileField  : ${i.hasAttachFileField()?c}
                hasDuplicateFieldName : ${i.hasDuplicateFieldName()?c}
                hasLob  			: ${i.hasLob()?c}
                toStringStatement   : ${i.toStringStatement}
                
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
                
                importedKeys                 : 
                <#list i.importedKeys as m>
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
                <#list i.attachFileFieldList as k>
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
                </#list> 
                
                
                fieldListExceptLob           : 
                <#list i.fieldListExceptLob as k>
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
                </#list>
                
                primaryKeyFieldList          : 
                <#list i.primaryKeyFieldList as k>
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
                </#list>
                
                fieldListExceptForeignKey           : 
                <#list i.fieldListExceptForeignKey as k>
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
                </#list>
                
                
                fieldListSortByOrdinalPosition           : 
                <#list i.fieldListSortByOrdinalPosition as k>
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
                </#list>
                
                importClassNameList          : 
                <#list i.importClassNameList as n>
                    ${n}
                </#list> 
                
                importDeclarations           :
                <#list i.importDeclarations as o>
                    ${o}
                </#list>
                
                
                
                
                toStringFieldList			:
                <#list i.toStringFieldList as k>
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
                    emptyColumnName     -->  ${k.emptyColumnName?c}
                    emptyColumnType     -->  ${k.emptyColumnType?c}
                    emptyFieldName      -->  ${k.emptyFieldName?c}
                    emptyFieldType      -->  ${k.emptyFieldType?c}
                    firstCapFieldName   -->  ${k.firstCapFieldName}
                    getterMethodName    -->  ${k.getterMethodName}
                    haveSpaceColumnName -->  ${k.haveSpaceColumnName?c}
                    haveSpaceColumnType -->  ${k.haveSpaceColumnType?c}
                    hasNullValue 		-->  ${k.hasNullValue()?c}
                    lob      			-->  ${k.lob?c}
                    nullValue      		-->  ${k.nullValue!'null'}
                    nullable      		-->  ${k.nullable?c}
                    primitiveType      	-->  ${k.primitiveType?c}
                    reservedFieldName   -->  ${k.reservedFieldName?c}
                    setterMethodName    -->  ${k.setterMethodName}
                    simpleFieldType     -->  ${k.simpleFieldType}
                    simpleObjectClassName  -->  ${k.simpleObjectClassName}
                    toPrimitiveMethod   -->  ${k.toPrimitiveMethod!'null'}
                    unique   			-->  ${k.unique?c}
                    validColumnSize     -->  ${k.validColumnSize?c}
                    validFieldType      -->  ${k.validFieldType?c}
                    validNullable      	-->  ${k.validNullable?c}
                    validPatternFieldName   -->  ${k.validPatternFieldName?c}
                    validPatternFieldType   -->  ${k.validPatternFieldType?c}
                </#list>
                
                
                Test: : ${i.getTest('${i.tableName}')}
                
                                                                            
</#list> 