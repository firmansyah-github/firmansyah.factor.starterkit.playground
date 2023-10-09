<#assign bgColor="white" >
${bgColor}
<#macro copyright date>
  <p>Copyright (C) ${date} Someone. All rights reserved.</p>
</#macro>

<#assign mail = "user@example.com">


<#macro testMacro validation=true>
<#list entity.fieldList as fld>
	<#if fld.create>
	    <#if validation>
          <#if !fld.nullable>
  @NotBlank(message = ValidationMessages.${entity.className?upper_case}_${fld.fieldName?upper_case}_MUST_BE_NOT_BLANK)
		  </#if>
		  <#if fld.columnSize gt 0>
  @Max(message = ValidationMessages.${entity.className?upper_case}_${fld.fieldName?upper_case}_MAX_LENGTH, value = ${fld.columnSize?string["0"]})
          </#if>
       </#if>		
  private ${fld.simpleFieldType} ${fld.fieldName}; //${fld.fieldType}
	</#if>
  </#list>
</#macro>