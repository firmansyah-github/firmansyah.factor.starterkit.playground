====================================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Public System Data Type Mapping Generation Example -------
====================================================================================================================================
<#--
${PRV_SYS_GEN_PATH|one-path|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|one|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAME|factor.user.defined.subroutines.9.public.system.datatype.mapping.txt|Private System placeholder for define file name that need to be generated, if required to be different with template name. }
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
-->

====================================================================================================================================
A. Public System Data Type Mapping Logic Rule
====================================================================================================================================
1. The Factor automatically proposes a default mapping between database data types and Java data types.
2. You can customize this mapping in the "Field Editor" dialog window.
3. You have the option to override this mapping by using the "Public System Data Type Mapping."
4. The "Public System Data Type Mapping" offers greater flexibility in handling mappings between diverse database data types and various programming language data types.
5. Key Attributes of the Public System Data Type Mapping Pattern:
   a. <#noparse>${PUB_SYS_DTM@DB_DT_TYPE|PL_DT_TYPE|Description}</#noparse>
   b. DB_DT_TYPE represents the database data type.
   c. PL_DT_TYPE represents the programming language data type.
   d. "PUB_SYS_DTM" is the designated keyword for this Public System Data Type Mapping Logic Rule.
6. The "Public System Data Type Mapping" is applied when "PRV_SYS_GEN_TYPE" is set to 'one' or 'many'.
====================================================================================================================================
B. Public System Data Type Mapping  - POSTGRES VS JAVA
====================================================================================================================================
<#-- 
${PUB_SYS_DTM@smallint|short|Numeric}
${PUB_SYS_DTM@smallint|Integer|Numeric}

${PUB_SYS_DTM@integer|int|Numeric}
${PUB_SYS_DTM@integer|Integer|Numeric}

${PUB_SYS_DTM@bigint|long|Numeric}
${PUB_SYS_DTM@bigint|Long|Numeric}

${PUB_SYS_DTM@decimal|BigDecimal|Numeric}

${PUB_SYS_DTM@numeric|BigDecimal|Numeric}

${PUB_SYS_DTM@real|float|Numeric}
${PUB_SYS_DTM@real|Float|Numeric}

${PUB_SYS_DTM@double|double|Numeric}
${PUB_SYS_DTM@double|Double|Numeric}

${PUB_SYS_DTM@character|String|Character}

${PUB_SYS_DTM@char|String|Character}

${PUB_SYS_DTM@character|String|Character}

${PUB_SYS_DTM@varchar|String|Character}

${PUB_SYS_DTM@text|String|Character}

${PUB_SYS_DTM@bytea|byte|Binary}

${PUB_SYS_DTM@date|java.sql.Date|Date/Time}
${PUB_SYS_DTM@date|java.time.LocalDate|Date/Time}

${PUB_SYS_DTM@time|java.sql.Time|Date/Time}
${PUB_SYS_DTM@time|java.time.LocalTime|Date/Time}


${PUB_SYS_DTM@timestamp|java.time.LocalDateTime|Date/Time}
${PUB_SYS_DTM@timestamp|java.sql.Timestamp|Date/Time}

${PUB_SYS_DTM@interval|String|Date/Time}

${PUB_SYS_DTM@boolean|Boolean|Boolean}
${PUB_SYS_DTM@boolean|boolean|Boolean}

${PUB_SYS_DTM@enum|String|Enum}

${PUB_SYS_DTM@bit|BitSet|Bit}

${PUB_SYS_DTM@tsvector|String|Text}

${PUB_SYS_DTM@tsquery|String|Text}

${PUB_SYS_DTM@cidr|String|NetworkAddress}

${PUB_SYS_DTM@inet|String|NetworkAddress}

${PUB_SYS_DTM@macaddr|String|NetworkAddress}

${PUB_SYS_DTM@uuid|java.util.UUID|UUID}

${PUB_SYS_DTM@json|String|JSON}

${PUB_SYS_DTM@jsonb|String|JSON}
 -->
 
<#list adv.entities as i>                                                   
  	${i?counter}: ${i.tableName}
                fieldList                    : 
                <#list i.fieldList as k>
					fieldType           -->  ${k.fieldType}      
                    fieldName           -->  ${k.fieldName}      
                     
                    columnType          -->  ${k.columnType}     
                    columnName          -->  ${k.columnName}     
                    
                </#list> 

</#list>    