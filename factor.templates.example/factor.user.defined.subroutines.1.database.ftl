<#--
${PRV_SYS_GEN_PATH|user-defined-subroutines|Private System placeholder for create generated relative path}
${PRV_SYS_GEN_TYPE|one|Please choose one option from this Private Gen type list: one, many, copy}
${PRV_SYS_GEN_FILENAME|factor.user.defined.subroutines.1.database.txt|Private System placeholder for define file name that need to be generated, if required to be different with template name}
${PRV_SYS_IS_REPLACE|true|Private System placeholder for replace previous generated file or create unique file name,list:true,false}
-->


=====================================================================================================================
-- Apache FreeMarker 2.3.26 - Factor User Defined Subroutines - Database Example -------
=====================================================================================================================
=====================================================================================================================
A. Database - Factor Subroutines ------------------------------------------------------------------------------------
=====================================================================================================================

===================
1. catalogs Expression or Script
====================                                                                                  
<#noparse>
<#list dbs.catalogs as i>                                                         
  ${i?counter}: ${i}                                                                
</#list> 
</#noparse>

	|||
	VVV
====================
1. catalogs RESULT
====================
<#list dbs.catalogs as i>                                                         
  ${i?counter}: ${i}                                                                
</#list>     

===================
2. schemas Expression or Script
====================   
<#noparse>
<#list dbs.schemas as i>                                                          
  ${i?counter}: ${i}                                                                
</#list> 
</#noparse> 
	|||
	VVV
====================
2. schemas RESULT
====================
<#list dbs.schemas as i>                                                          
  ${i?counter}: ${i}                                                                
</#list>  

    
===================
3. tableTypes Expression or Script
==================== 
<#noparse>
<#list dbs.tableTypes as i>                                                       
  ${i?counter}: ${i}                                                                
</#list> 
</#noparse>  
	|||
	VVV
====================
3. tableTypes RESULT
====================
<#list dbs.tableTypes as i>                                                       
  ${i?counter}: ${i}                                                                
</#list>    

===================
4. tableTypesList Expression or Script
==================== 
<#noparse>
<#list dbs.tableTypesList as i>                                                   
  ${i?counter}: ${i}                                                                
</#list> 
</#noparse>  
	|||
	VVV
====================
4. tableTypesList RESULT
====================
<#list dbs.tableTypesList as i>                                                   
  ${i?counter}: ${i}                                                                
</#list>                          

=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#noparse>${dbs.catalog}</#noparse>                       	->  ${dbs.catalog}                                      
                                                                                  
<#noparse>${dbs.create?c}</#noparse>                       	->  ${dbs.create?c}
                                                                                  
<#noparse>${dbs.driverClassName}</#noparse>                 ->  ${dbs.driverClassName}
                                                                                  
<#noparse>${dbs.driverFile}</#noparse>                      ->  ${dbs.driverFile}
                                                                                  
<#noparse>${dbs.name}</#noparse>                       		->  ${dbs.name}
                                                                                  
<#noparse>${dbs.password}</#noparse>                       	->  ${dbs.password}
                                                                                  
<#noparse>${dbs.profileName}</#noparse>                     ->  ${dbs.profileName}
                                                                                  
<#noparse>${dbs.schema}</#noparse>                       	->  ${dbs.schema}
                                                                                  
<#noparse>${dbs.tablePattern}</#noparse>                    ->  ${dbs.tablePattern}
                                                                                  
<#noparse>${dbs.tableType}</#noparse>                       ->  ${dbs.tableType}
                                                                                  
<#noparse>${dbs.url}</#noparse>                       		->  ${dbs.url}
                                                                                  
<#noparse>${dbs.user}</#noparse>                       		->  ${dbs.user}


=====================================================================================================================
B. [WARNING] Override Database - Factor Subroutines -----------------------------------------------------------------
=====================================================================================================================
=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
<#-- IF YOU WANT TO TRY REMOVE THIS LINE COMMENTS 
===================
1. catalog Expression or Script
====================                                                                                  
<#noparse>
${dbs.setCatalog('catalog')}
${dbs.catalog} 
</#noparse>

	|||
	VVV
====================
1. catalog RESULT
====================

===================
2. create Expression or Script
====================                                                                                  
<#noparse>
${dbs.setCreate(true)}
${dbs.create} 
</#noparse>

	|||
	VVV
====================
2. create RESULT
====================
${dbs.setCreate(true)}
${dbs.create?c} 

    
===================
3. name Expression or Script
====================                                                                                  
<#noparse>
${dbs.setName('name')}
${dbs.name} 
</#noparse>

	|||
	VVV
====================
3. name RESULT
====================
${dbs.setName('name')}
${dbs.name} 

    
        
===================
4. password Expression or Script
====================                                                                                  
<#noparse>
${dbs.setPassword('password')}
${dbs.password} 
</#noparse>

	|||
	VVV
====================
4. password RESULT
====================
${dbs.setPassword('password')}
${dbs.password} 

    
===================
5. profileName Expression or Script
====================                                                                                  
<#noparse>
${dbs.setProfileName('profileName')}
${dbs.profileName} 
</#noparse>

	|||
	VVV
====================
5. profileName RESULT
====================
${dbs.setProfileName('profileName')}
${dbs.profileName} 

  
===================
6. schema Expression or Script
====================                                                                                  
<#noparse>
${dbs.setSchema('schema')}
${dbs.schema} 
</#noparse>

	|||
	VVV
====================
6. schema RESULT
====================
${dbs.setSchema('schema')}
${dbs.schema}  

 
===================
7. tablePattern Expression or Script
====================                                                                                  
<#noparse>
${dbs.setTablePattern('tablePattern')}
${dbs.tablePattern} 
</#noparse>

	|||
	VVV
====================
7. tablePattern RESULT
====================
${dbs.setTablePattern('tablePattern')}
${dbs.tablePattern} 

===================
8. tableType Expression or Script
====================                                                                                  
<#noparse>
${dbs.setTableType('tableType')}
${dbs.tableType} 
</#noparse>

	|||
	VVV
====================
8. tableType RESULT
====================
${dbs.setTableType('tableType')}
${dbs.tableType} 

IF YOU WANT TO TRY REMOVE THIS LINE COMMENTS -->


=====================================================================================================================
C. NOT USED Database - Factor Subroutines ---------------------------------------------------------------------------
=====================================================================================================================
=====================================================================================================================
Expression or Script   										-> RESULT
=====================================================================================================================
${dbs.profileConnector}
${dbs.addPropertyChangeListener(null)}
${dbs.addValueModifyListener(null)}
${dbs.do('firmansyah')}
${dbs.propertyChange(null)}
${dbs.removePropertyChangeListener(null)} 