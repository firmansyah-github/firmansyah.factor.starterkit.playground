<#--
${PRV_SYS_GEN_PATH|user-defined-subroutines|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|one|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAME|factor.user.defined.subroutines.2.generation.txt|Private System placeholder for define file name that need to be generated, if required to be different with template name}
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
-->


=====================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Generation Example -------
=====================================================================================================================
=====================================================================================================================
A. Generation - Factor Subroutines ------------------------------------------------------------------------------------
=====================================================================================================================

=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${adv.buildDate?datetime}</#noparse>							->	${adv.buildDate?datetime}
                                                                              
<#noparse>${adv.comment}</#noparse>    									->	${adv.comment}
                                                                              
<#noparse>${adv.generation.create?c}</#noparse>							->	${adv.generation.create?c}
                                                                              
<#noparse>${adv.generation.outputDir?has_content?c}</#noparse>			->	${adv.generation.outputDir?has_content?c}
                                                                              
<#noparse>${adv.generation.packageName?has_content?c}</#noparse> 		->	${adv.generation.packageName?has_content?c}
                                                                              
<#noparse>${adv.generation.rootDir}</#noparse>							->	${adv.generation.rootDir}
                                                                              
<#noparse>${adv.generation.specifyTemplateDir?c}</#noparse>				->	${adv.generation.specifyTemplateDir?c}
                                                                              
<#noparse>${adv.generation.superClassName?has_content?c}</#noparse>		->	${adv.generation.superClassName?has_content?c}
                                                                              
<#noparse>${adv.generation.templateDir}</#noparse>						->	${adv.generation.templateDir}


=====================================================================================================================
B. [WARNING] Override Generation - Factor Subroutines -----------------------------------------------------------------
=====================================================================================================================
=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${adv.setBuildDate(.now)}</#noparse>							->	${adv.setBuildDate(.now)}
<#noparse>${adv.buildDate?datetime}</#noparse>							->	${adv.buildDate?datetime}

<#noparse>${adv.setComment('TEST COMMENT ADDITIONAL')}</#noparse>		->	${adv.setComment('TEST COMMENT ADDITIONAL')}
<#noparse>${adv.comment}</#noparse>    									->	${adv.comment}

<#noparse>${adv.generation.setCreate(true)}</#noparse>					->	${adv.generation.setCreate(true)}
<#noparse>${adv.generation.create?c}</#noparse>							->	${adv.generation.create?c}

<#-- DO NOT USED -->
<#-- IF YOU WANT TO TRY REMOVE THIS LINE COMMENTS 
<#noparse>${adv.generation.setOutputDir('outputDir')}</#noparse>		->	${adv.generation.setOutputDir('outputDir')}
<#noparse>${adv.generation.outputDir}</#noparse>						->	${adv.generation.outputDir}


<#noparse>${adv.generation.setPackageName('packageName')}</#noparse>	->	${adv.generation.setPackageName('packageName')}
<#noparse>${adv.generation.packageName}</#noparse> 						->	${adv.generation.packageName}


<#noparse>${adv.generation.setRootDir('rootDir')}</#noparse>			->	${adv.generation.setRootDir('rootDir')}
<#noparse>${adv.generation.rootDir}</#noparse>							->	${adv.generation.rootDir}


<#noparse>${adv.generation.setSpecifyTemplateDir(true)}</#noparse>		->	${adv.generation.setSpecifyTemplateDir(true)}
<#noparse>${adv.generation.specifyTemplateDir?c}</#noparse>				->	${adv.generation.specifyTemplateDir?c}


<#noparse>${adv.generation.setSuperClassName('superClassName')}</#noparse>	->	${adv.generation.setSuperClassName('superClassName')}
<#noparse>${adv.generation.superClassName}</#noparse>					->	${adv.generation.superClassName}


<#noparse>${adv.generation.setTemplateDir('templateDir')}</#noparse>	->	${adv.generation.setTemplateDir('templateDir')}
<#noparse>${adv.generation.templateDir}</#noparse>						->	${adv.generation.templateDir}

IF YOU WANT TO TRY REMOVE THIS LINE COMMENTS -->





=====================================================================================================================
C. NOT USED Generation - Factor Subroutines ---------------------------------------------------------------------------
=====================================================================================================================
=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${adv.generation.addPropertyChangeListener(null)}</#noparse>	->	${adv.generation.addPropertyChangeListener(null)}

<#noparse>${adv.generation.addValueModifyListener(null)}</#noparse>		->	${adv.generation.addValueModifyListener(null)}

<#noparse>${adv.generation.propertyChange(null)}</#noparse>				->	${adv.generation.propertyChange(null)}

<#noparse>${adv.generation.removePropertyChangeListener(null)}</#noparse>	->	${adv.generation.removePropertyChangeListener(null)}

<#-- DO NOT USED -->
<#--
<#noparse>${adv.generation.valueModified()}</#noparse>	->	${adv.generation.valueModified()}
-->