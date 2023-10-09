

<#import "/mylib.ftl" as my>

${my.bgColor}
<@my.copyright date="1999-2002"/>
<#assign bgColor="red" in my>
${my.bgColor}

<@my.testMacro validation=false/>
${my.mail}

