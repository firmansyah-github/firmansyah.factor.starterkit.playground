<#--
${PRV_SYS_GEN_PATH|user-defined-subroutines|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|one|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAME|factor.user.defined.subroutines.3.draftTemplate.txt|Private System placeholder for define file name that need to be generated, if required to be different with template name}
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
-->


=====================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Draft Template Example -------
This Draft Template User Defined Subroutines is not used for generating template basically
Only used by the process of scanning existing source code and generating draft template
=====================================================================================================================
=====================================================================================================================
A. Draft Template - Factor Subroutines ------------------------------------------------------------------------------------
=====================================================================================================================

=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${adv.draftTemplate.appDir!''}</#noparse>							->	${adv.draftTemplate.appDir!''}
                                                                              
<#noparse>${adv.draftTemplate.create?c}</#noparse>    						->	${adv.draftTemplate.create?c}
                                                                              
<#noparse>${adv.draftTemplate.draftDir!''}</#noparse>						->	${adv.draftTemplate.draftDir!''}


===================
1. draftTemplateKeyValue Expression or Script
====================     
<#noparse>
<#list adv.draftTemplateKeyValue as dtkv>
  ${dtkv.create?c}
  ${dtkv.name}
  ${dtkv.no}
  ${dtkv.selected?c}
  ${dtkv.value}
</#list>
</#noparse>	
	|||
	VVV
====================
1. draftTemplateKeyValue RESULT
====================					
<#list adv.draftTemplateKeyValue as dtkv>
  ${dtkv.create?c}
  ${dtkv.name}
  ${dtkv.no}
  ${dtkv.selected?c}
  ${dtkv.value}
</#list>


=====================================================================================================================
B. [WARNING] Override Generation - Factor Subroutines -----------------------------------------------------------------
=====================================================================================================================
=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${adv.draftTemplate.setAppDir('appDir')}</#noparse>				->	${adv.draftTemplate.setAppDir('appDir')}
<#noparse>${adv.draftTemplate.appDir}</#noparse>							->	${adv.draftTemplate.appDir}
                                                                              
<#noparse>${adv.draftTemplate.setCreate(true)}</#noparse>    				->	${adv.draftTemplate.setCreate(true)}
<#noparse>${adv.draftTemplate.create?c}</#noparse>    						->	${adv.draftTemplate.create?c}
                                                                              
<#noparse>${adv.draftTemplate.setDraftDir('draftDir')}</#noparse>			->	${adv.draftTemplate.setDraftDir('draftDir')}
<#noparse>${adv.draftTemplate.draftDir}</#noparse>							->	${adv.draftTemplate.draftDir}

<#-- DO NOT USED -->
<#--

-->





=====================================================================================================================
C. NOT USED Generation - Factor Subroutines ---------------------------------------------------------------------------
=====================================================================================================================
=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${adv.draftTemplate.addPropertyChangeListener(null)}</#noparse>	->	${adv.draftTemplate.addPropertyChangeListener(null)}

<#noparse>${adv.draftTemplate.addValueModifyListener(null)}</#noparse>		->	${adv.draftTemplate.addValueModifyListener(null)}

<#noparse>${adv.draftTemplate.propertyChange(null)}</#noparse>				->	${adv.draftTemplate.propertyChange(null)}

<#noparse>${adv.draftTemplate.removePropertyChangeListener(null)}</#noparse>	->	${adv.draftTemplate.removePropertyChangeListener(null)}

<#-- DO NOT USED -->
<#--
<#noparse>${adv.draftTemplate.valueModified()}</#noparse>	->	${adv.draftTemplate.valueModified()}
-->