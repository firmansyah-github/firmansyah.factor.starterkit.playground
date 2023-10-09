<#ftl output_format="HTML" auto_esc=false>
<-- Apache FreeMarker 2.3.26 - Predefined Directives                   ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Directives                   ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Directives                   ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Directives                   ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Directives                   ----------------------------------------------->

0. ftl, comment Directive--------------------------------------------------------------------------------------------->

<#noparse><#ftl output_format="HTML" auto_esc=false></#noparse>
XML escaping: ${"&{}"}
<#outputformat "RTF">
  RTF escaping: ${"&{}"}
</#outputformat>
<#outputformat "plainText">
  No escsaping: ${"&{}"}
</#outputformat>
XML escsaping: ${"&{}"}

<#-- 
<#ftl output_format="XML">
${"'{}"}
<#outputformat "HTML">
  ${"'{}"}
  <#outputformat "RTF">
    ${"'{}"}
  </#outputformat>
</#outputformat>


<#ftl outputFormat="XML">
${"'{}"}
<#outputFormat "{HTML}"><#-- Same as "XML{HTML}" --
  ${"'{}"}
  <#outputFormat '{RTF}'><#-- Same as "XML{HTML{RTF}}" --
    ${"'{}"}
  </#outputFormat>
</#outputFormat>

 -->
<#noparse>${"R&D"}</#noparse> -> ${"R&D"}
<#noparse>${"R&D"?esc}</#noparse> -> ${"R&D"?esc}
<#noparse>
<#autoesc>
  ${"&"}
  ...
  ${"&"}
</#autoesc>
</#noparse>

<#autoesc>
  ${"&"}
  ...
  ${"&"}
</#autoesc>

<#noparse>${"<b>Test</b>"}</#noparse> -> ${"<b>Test</b>"}
<#noparse>${"<b>Test</b>"?no_esc}</#noparse> -> ${"<b>Test</b>"?no_esc}


1. Assign Directive -------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign seq = ["foo", "bar", "baz"] >
<#assign x = (x!0) + 1>
<#assign
  seq = ["foo", "bar", "baz"]
  x++
>
x = ${x}
<#list seq as i>
  ${i?counter}: ${i}
</#list>

<#import "/mylib.ftl" as my>
<#assign bgColor="red" in my.bgColor>
${my.bgColor}

<#macro myMacro>foo</#macro>
<#assign x>
  <#list 1..3 as n>
    ${n} <@myMacro />
  </#list>
</#assign>
Number of words: ${x?word_list?size}
${x}
</#noparse>

RESULTS:
<#assign seq = ["foo", "bar", "baz"] >
<#assign x = (x!0) + 1>
<#assign
  seq = ["foo", "bar", "baz"]
  x++
>
x = ${x}
<#list seq as i>
${i?counter}: ${i}
</#list>

<#import "/mylib.ftl" as my>
<#assign bgColor="red" in my>
${my.bgColor}

<#macro myMacro>foo</#macro>
<#assign z>
  <#list 1..3 as n>
    ${n} <@myMacro />
  </#list>
</#assign>
Number of words: ${z?word_list?size}
${z}

2. attempt, recover Directive ----------------------------------------------------------------------------------------->
CODE:
<#noparse>
Primary content
<#attempt>
  Optional content: ${thisMayFails}
<#recover>
  Ops! The optional content is not available.
</#attempt>
Primary content continued
</#noparse>

RESULTS:
Primary content
<#attempt>
  Optional content: ${thisMayFails}
<#recover>
  Ops! The optional content is not available.
</#attempt>
Primary content continued

3. compress Directive ------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign moo = "    moo  \n\n   ">
(<#compress>
  1 2  3   4    5
  ${moo}
  test only

  I said, test only

</#compress>)
</#noparse>

RESULTS:
<#assign moo = "    moo  \n\n   ">
(<#compress>
  1 2  3   4    5
  ${moo}
  test only

  I said, test only

</#compress>)

4. escape Directive --------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign x = "<test>">
<#macro m1>
  m1: ${x}
</#macro>

<#escape x as x?html>
  <#macro m2>m2: ${x}</#macro>
  ${x}
  <@m1/>
</#escape>
${x}
<@m2/>

<#escape x as x?html>
  From: ${x}
  Subject: This is Subject
  <#noescape>Message: <b> This is Message </b> of ${x}</#noescape>
  ...
</#escape>

<#escape x as x?html>
  Customer Name: ${x}
  Items to ship:
  <#escape x as x>
    ${x}
  </#escape>
</#escape>
</#noparse>

RESULTS:
<#assign x = "<test>">
<#macro m1>
  m1: ${x}
</#macro>

<#escape x as x?html>
  <#macro m2>m2: ${x}</#macro>
  ${x}
  <@m1/>
</#escape>
${x}
<@m2/>

<#escape x as x?html>
  From: ${x}
  Subject: This is Subject
  <#noescape>Message: <b> This is Message </b> of ${x}</#noescape>
  ...
</#escape>

<#escape x as x?html>
  Customer Name: ${x}
  Items to ship:
  <#escape x as x>
    ${x}
  </#escape>
</#escape>

5. flush Directive ---------------------------------------------------------------------------------------------------->
<#flush>

6. function, return Directive ----------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#function avg x y>
  <#return (x + y) / 2>
</#function>
${avg(10, 20)}


<#function avg nums...>
  <#local sum = 0>
  <#list nums as num>
    <#local sum += num>
  </#list>
  <#if nums?size != 0>
    <#return sum / nums?size>
  </#if>
</#function>
${avg(10, 20)}
${avg(10, 20, 30, 40)}
${avg()!"N/A"}
</#noparse>

RESULTS:
<#function avg x y>
  <#return (x + y) / 2>
</#function>
${avg(10, 20)}


<#function avg nums...>
  <#local sum = 0>
  <#list nums as num>
    <#local sum += num>
  </#list>
  <#if nums?size != 0>
    <#return sum / nums?size>
  </#if>
</#function>
${avg(10, 20)}
${avg(10, 20, 30, 40)}
${avg()!"N/A"}

7. global Directive --------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#global name="value">
<#global name1="value1" name2=2 >
<#global name3>
  capture this
</#global>

${name}
${name1}
${name2}
${name3}
</#noparse>

RESULTS:
<#global name="value">
<#global name1="value1" name2=2 >
<#global name3>
  capture this
</#global>

${name}
${name1}
${name2}
${name3}

8. if, elseif, else Directive ----------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign x = 10 y=-10>
<#if x == 1>
  x is 1
<#elseif x == 2>
  x is 2
<#elseif x == 3>
  x is 3
<#elseif x == 4>
  x is 4
<#else>
  x is not 1 nor 2 nor 3 nor 4
</#if>


<#if x == 1>
  x is 1
  <#if y == 1>
    and y is 1 too
  <#else>
    but y is not
  </#if>
<#else>
  x is not 1
  <#if y < 0>
    and y is less than 0
  </#if>
</#if>
</#noparse>

RESULTS:
<#assign x = 10 y=-10>
<#if x == 1>
  x is 1
<#elseif x == 2>
  x is 2
<#elseif x == 3>
  x is 3
<#elseif x == 4>
  x is 4
<#else>
  x is not 1 nor 2 nor 3 nor 4
</#if>

<#if x == 1>
  x is 1
  <#if y == 1>
    and y is 1 too
  <#else>
    but y is not
  </#if>
<#else>
  x is not 1
  <#if y < 0>
    and y is less than 0
  </#if>
</#if>


9. import Directive --------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#import "/mylib.ftl" as my>

Some Web page...
<@my.copyright date="1999-2002"/>
${my.mail}
</#noparse>

RESULTS:
<#import "/mylib.ftl" as my>

Some Web page...
<@my.copyright date="1999-2002"/>
${my.mail}


10. include Directive ------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign me = "Juila Smith">
<h1>Some test</h1>
<p>Yeah.
<hr>
<#include "/myInclude.ftl">

<#include "/myInclude.ftl" parse=false encoding="Shift_JIS" ignore_missing=true>
</#noparse>

RESULTS:
<#assign me = "Juila Smith">
<h1>Some test</h1>
<p>Yeah.
<hr>
<#include "/myInclude.ftl">

<#include "/myInclude.ftl" parse=false encoding="Shift_JIS" ignore_missing=true>


11. list, else, items, sep, break Directive --------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign users= ['Joe', 'Kate', 'Fred']> 
<#list users as user>
  <p>${user}
</#list>

<#assign products= { "apple": 5, "banana": 10, "kiwi": 15 }>
<#list products as name, price>
  <p>${name}: ${price}
</#list>

<#list users>
  <ul>
    <#items as user>
      <li>${user}</li>
    </#items>
  </ul>
<#else>
  <p>No users
</#list>

<#list users as user>${user}<#sep>, </#list>

<#list 1..10 as x>
  ${x}
  <#if x == 3>
    <#break>
  </#if>
</#list>

<#list users>
  <table>
    <#items as user>
      <tr class="${user?item_parity}Row">
        <td>${user?counter}
        <td>${user}
    </#items>
  </table>
</#list>

<#list 1..2 as i>
  <#list 1..3 as j>
    i = ${i}, j = ${j}
  </#list>
</#list>

<#list 1..2 as i>
  Outer: ${i}
  <#list 10..12 as i>
    Inner: ${i}
  </#list>
  Outer again: ${i}
</#list>
</#noparse>

RESULTS:
<#assign users= ['Joe', 'Kate', 'Fred']> 
<#list users as user>
  <p>${user}
</#list>

<#assign products= { "apple": 5, "banana": 10, "kiwi": 15 }>
<#list products as name, price>
  <p>${name}: ${price}
</#list>

<#list users>
  <ul>
    <#items as user>
      <li>${user}</li>
    </#items>
  </ul>
<#else>
  <p>No users
</#list>

<#list users as user>${user}<#sep>, </#list>

<#list 1..10 as x>
  ${x}
  <#if x == 3>
    <#break>
  </#if>
</#list>

<#list users>
  <table>
    <#items as user>
      <tr class="${user?item_parity}Row">
        <td>${user?counter}
        <td>${user}
    </#items>
  </table>
</#list>

<#list 1..2 as i>
  <#list 1..3 as j>
    i = ${i}, j = ${j}
  </#list>
</#list>

<#list 1..2 as i>
  Outer: ${i}
  <#list 10..12 as i>
    Inner: ${i}
  </#list>
  Outer again: ${i}
</#list>


12. local Directive --------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#function sum>
  <#local num = 0, num2=2>
  <#return num2>
</#function>
${sum()}

<#macro test>
  <#local num>
  <p>Copyright (C)Someone. All rights reserved.</p>
  </#local>
  ${num}
</#macro>
<@test/>
</#noparse>

RESULTS:
<#function sum>
  <#local num = 0, num2=2>
  <#return num2>
</#function>
${sum()}

<#macro test>
  <#local num>
  <p>Copyright (C)Someone. All rights reserved.</p>
  </#local>
  ${num}
</#macro>
<@test/>

13. macro, nested, return Directive ----------------------------------------------------------------------------------->
CODE:
<#noparse>
<#macro test>
  Test text
</#macro>
<#-- call the macro: -->
<@test/>

<#macro test foo bar baaz>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<#-- call the macro: -->
<@test foo="a" bar="b" baaz=5*5-2/>

<#macro test foo bar="Bar" baaz=-1>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<@test foo="a" bar="b" baaz=5*5-2/>
<@test foo="a" bar="b"/>
<@test foo="a" baaz=5*5-2/>
<@test foo="a"/>

<#macro list title items>
  <p>${title?cap_first}:
  <ul>
    <#list items as x>
      <li>${x?cap_first}
    </#list>
  </ul>
</#macro>
<@list items=["mouse", "elephant", "python"] title="Animals"/>

<#macro img src extra...>
  <img src="/myapp${src?ensure_starts_with('/')}"
    <#list extra as attrName, attrVal>
      ${attrName}="${attrVal}"
    </#list>
  >
</#macro>
<@img src="/images/test.png" width=100 height=50 alt="Test"/>

<#macro m a b ext...>
  a = ${a}
  b = ${b}
  <#if ext?is_sequence>
    <#list ext as e>
      ${e?index} = ${e}
    </#list>
  <#else>
    <#list ext as k, v>
      ${k} = ${v}
    </#list>
  </#if>
</#macro>

<@m 1 2 3 4 5 />

<@m a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 />

<#macro do_twice>
  1. <#nested>
  2. <#nested>
</#macro>
<@do_twice>something</@do_twice>

<#macro do_thrice>
  <#nested 1>
  <#nested 2>
  <#nested 3>
</#macro>
<@do_thrice ; x>
  ${x} Anything.
</@do_thrice>

 <#macro repeat count>
  <#list 1..count as x>
    <#nested x, x/2, x==count>
  </#list>
</#macro>
<@repeat count=4 ; c, halfc, last>
  ${c}. ${halfc}<#if last> Last!</#if>
</@repeat>
 
 
 <#macro test>
  Test text
  <#return>
  Will not be printed.
</#macro>
<@test/>
</#noparse>

RESULTS:
<#macro test>
  Test text
</#macro>
<#-- call the macro: -->
<@test/>

<#macro test foo bar baaz>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<#-- call the macro: -->
<@test foo="a" bar="b" baaz=5*5-2/>

<#macro test foo bar="Bar" baaz=-1>
  Test text, and the params: ${foo}, ${bar}, ${baaz}
</#macro>
<@test foo="a" bar="b" baaz=5*5-2/>
<@test foo="a" bar="b"/>
<@test foo="a" baaz=5*5-2/>
<@test foo="a"/>

<#macro list title items>
  <p>${title?cap_first}:
  <ul>
    <#list items as x>
      <li>${x?cap_first}
    </#list>
  </ul>
</#macro>
<@list items=["mouse", "elephant", "python"] title="Animals"/>

<#macro img src extra...>
  <img src="/myapp${src?ensure_starts_with('/')}"
    <#list extra as attrName, attrVal>
      ${attrName}="${attrVal}"
    </#list>
  >
</#macro>
<@img src="/images/test.png" width=100 height=50 alt="Test"/>

<#macro m a b ext...>
  a = ${a}
  b = ${b}
  <#if ext?is_sequence>
    <#list ext as e>
      ${e?index} = ${e}
    </#list>
  <#else>
    <#list ext as k, v>
      ${k} = ${v}
    </#list>
  </#if>
</#macro>

<@m 1 2 3 4 5 />

<@m a=1 b=2 c=3 d=4 e=5 data\-foo=6 myns\:bar=7 />

<#macro do_twice>
  1. <#nested>
  2. <#nested>
</#macro>
<@do_twice>something</@do_twice>

<#macro do_thrice>
  <#nested 1>
  <#nested 2>
  <#nested 3>
</#macro>
<@do_thrice ; x>
  ${x} Anything.
</@do_thrice>

 <#macro repeat count>
  <#list 1..count as x>
    <#nested x, x/2, x==count>
  </#list>
</#macro>
<@repeat count=4 ; c, halfc, last>
  ${c}. ${halfc}<#if last> Last!</#if>
</@repeat>
 
 
 <#macro test>
  Test text
  <#return>
  Will not be printed.
</#macro>
<@test/>


14. stop Directive ---------------------------------------------------------------------------------------------------->
CODE:
<#noparse>
<#stop "I want to stop">
</#noparse>

RESULTS:
<#-- <#stop "I want to stop"> -->
 
15. switch, case, default, break Directive ---------------------------------------------------------------------------->
CODE:
<#noparse>
<#assign animal="small">
<#switch animal>
  <#case "small">
     This will be processed if it is small
     <#break>
  <#case "medium">
     This will be processed if it is medium
     <#break>
  <#case "large">
     This will be processed if it is large
     <#break>
  <#default>
     This will be processed if it is neither
</#switch>

<#assign x=5>
<#switch x>
  <#case 1>
    1
  <#case 2>
    2
  <#default>
    d
</#switch>
</#noparse>

RESULTS:
<#assign animal="small">
<#switch animal>
  <#case "small">
     This will be processed if it is small
     <#break>
  <#case "medium">
     This will be processed if it is medium
     <#break>
  <#case "large">
     This will be processed if it is large
     <#break>
  <#default>
     This will be processed if it is neither
</#switch>

<#assign x=5>
<#switch x>
  <#case 1>
    1
  <#case 2>
    2
  <#default>
    d
</#switch>


15. switch, case, default, break Directive ---------------------------------------------------------------------------->
CODE:
<#noparse>
  1 <#t>
  2<#t>
  3<#lt>
  4
  5<#rt>
  6
</#noparse>

RESULTS:

  1 <#t>
  2<#t>
  3<#lt>
  4
  5<#rt>
  6

16. User-defined Directive -------------------------------------------------------------------------------------------->
CODE:
<#noparse> 
<@html_escape>
  a < b
  Romeo & Juliet
</@html_escape>

<#macro list title items>
  <p>${title?cap_first}:
  <ul>
    <#list items as x>
      <li>${x?cap_first}
    </#list>
  </ul>
</#macro>

<@list items=["mouse", "elephant", "python"] title="Animals"/>


<#macro heading title level>
  <p>${title?cap_first}:
  <p>${level}:  
</#macro> 
<@heading "Preface", 1/> is equivalent with 
<@heading title="Preface" level=1/> or 
<@heading level=1 title="Preface"/>
</#noparse>

RESULTS:
<@html_escape>
  a < b
  Romeo & Juliet
</@html_escape>

<#macro list title items>
  <p>${title?cap_first}:
  <ul>
    <#list items as x>
      <li>${x?cap_first}
    </#list>
  </ul>
</#macro>

<@list items=["mouse", "elephant", "python"] title="Animals"/>


<#macro heading title level>
  <p>${title?cap_first}:
  <p>${level}:  
</#macro> 
<@heading "Preface", 1/> is equivalent with 
<@heading title="Preface" level=1/> or 
<@heading level=1 title="Preface"/>

17. setting Directive ------------------------------------------------------------------------------------------------->
CODE:
<#noparse><#setting datetime_format="iso"></#noparse> -> <#setting datetime_format="iso">
<#noparse>${"1995-10-25T15:05"?datetime}</#noparse> -> ${"1995-10-25T15:05"?datetime}>

<#noparse><#setting url_escaping_charset="UTF-8"></#noparse>  <#setting url_escaping_charset="UTF-8">
<#noparse>${"a/b c"?url}</#noparse>   -> ${"a/b c"?url}
<#noparse>${"a/b c"?url_path}</#noparse>   -> ${"a/b c"?url_path}

<#noparse><#setting datetime_format="MMM dd, yyyy"></#noparse> --> <#setting datetime_format="MMM dd, yyyy">
<#noparse>${'Oct 25, 1995'?date?date_if_unknown}</#noparse> --> ${'Oct 25, 1995'?date?date_if_unknown}
<#noparse>${'3:05:30 PM'?time?time_if_unknown}</#noparse> --> ${'3:05:30 PM'?time?time_if_unknown}

<#noparse><#setting number_format="currency"></#noparse> --> <#setting number_format="currency">
<#noparse><#assign x=42></#noparse> --> <#assign x=42>
<#noparse>${x}</#noparse> --> ${x}

<#noparse><#setting number_format="0.##"></#noparse> --> <#setting number_format="0.##">
<#noparse>${1.234}</#noparse> --> ${1.234}

<#noparse><#setting number_format=",##0.00"></#noparse> --> <#setting number_format=",##0.00">
<#noparse><#setting locale="en_US"></#noparse> --> <#setting locale="en_US">
US people write:<#noparse>${12345678}</#noparse> --> US people write:${12345678}
<#noparse><#setting locale="hu"></#noparse> --> <#setting locale="hu">
German people write:<#noparse>${12345678}</#noparse> --> German people write:${12345678}

<#noparse><#setting locale="en_US"></#noparse> -> <#setting locale="en_US">
<#noparse>${10002.5?string[",000"]}</#noparse> --> ${10002.5?string[",000"]}
<#noparse>${10002.5?string[",000;; roundingMode=halfUp groupingSeparator=_"]}</#noparse> --> ${10002.5?string[",000;; roundingMode=halfUp groupingSeparator=_"]}
