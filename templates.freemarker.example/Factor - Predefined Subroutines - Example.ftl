<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - String Example ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - String Example ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - String Example ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - String Example ----------------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - String Example ----------------------------------------------->
<#noparse>${true?c}</#noparse> -> ${true?c} 
<#noparse>${true?string("yes","no")}</#noparse> -> ${true?string("yes","no")}
<#noparse>${'example'?cap_first}</#noparse> -> ${'example'?cap_first}
<#noparse>${"example  example"?capitalize}</#noparse> -> ${"example  example"?capitalize}
<#noparse>${"example\nexample"?chop_linebreak}</#noparse> -> ${"example\nexample"?chop_linebreak}
<#noparse>${"piceous"?contains("ice")}?c</#noparse> -> ${"piceous"?contains("ice")?c}

<#noparse>${"Oct 25, 1995"?date}</#noparse> -> ${"Oct 25, 1995"?date}
<#noparse>${"3:05:30 PM"?time}</#noparse> -> ${"3:05:30 PM"?time}
<#noparse>${"Oct 25, 1995 03:05:00 PM"?datetime}</#noparse> -> ${"Oct 25, 1995 03:05:00 PM"?datetime}

<#-- Changing the setting value changes the expected format: -->
<#setting datetime_format="iso">
<#noparse>${"1995-10-25T15:05"?datetime}</#noparse> -> ${"1995-10-25T15:05"?datetime}

<#-- Parsing XML Schema xs:date, xs:time and xs:dateTime values: -->
<#noparse>${"1995-10-25"?date.xs}</#noparse> -> ${"1995-10-25"?date.xs}
<#noparse>${"15:05:30"?time.xs}</#noparse> -> ${"15:05:30"?time.xs}
<#noparse>${"1995-10-25T15:05:00"?datetime.xs}</#noparse> -> ${"1995-10-25T15:05:00"?datetime.xs}

<#-- Parsing ISO 8601 (both extended and basic formats): -->
<#noparse>${"1995-10-25T15:05"?datetime.iso}</#noparse> -> ${"1995-10-25T15:05"?datetime.iso}
<#noparse>${"19951025T1505"?datetime.iso}</#noparse> -> ${"19951025T1505"?datetime.iso}

<#-- Parsing with SimpleDateFormat patterns: -->
<#noparse>${"10/25/1995"?date("MM/dd/yyyy")}</#noparse> -> ${"10/25/1995"?date("MM/dd/yyyy")}
<#noparse>${"15:05:30"?time("HH:mm:ss")}</#noparse> -> ${"15:05:30"?time("HH:mm:ss")}
<#noparse>${"1995-10-25 03:05 PM"?datetime("yyyy-MM-dd hh:mm a")}</#noparse> -> ${"1995-10-25 03:05 PM"?datetime("yyyy-MM-dd hh:mm a")}

<#noparse>${"ahead"?ends_with("head")}</#noparse> -> ${"ahead"?ends_with("head")?c}

<#noparse>${"foo"?ensure_ends_with("/")}</#noparse> -> ${"foo"?ensure_ends_with("/")}
<#noparse>${"foo/"?ensure_ends_with("/")}</#noparse> -> ${"foo/"?ensure_ends_with("/")} 

<#noparse>${"foo"?ensure_starts_with("/")}</#noparse> -> ${"foo"?ensure_starts_with("/")}
<#noparse>${"/foo"?ensure_starts_with("/")}</#noparse> -> ${"/foo"?ensure_starts_with("/")}

<#noparse>${"abc://"?ensure_starts_with("[a-zA-Z]+://", "http://")}</#noparse> -> ${"abc://"?ensure_starts_with("[a-zA-Z]+://", "http://")}
<#noparse>${"abc://"?ensure_starts_with("[a-zA-Z]+://", "http://","r")}</#noparse> -> ${"abc://"?ensure_starts_with("[a-zA-Z]+://", "http://","r")}
<#noparse>${"abc://"?ensure_starts_with("[a-zA-Z]+://", "http://","i")}</#noparse> -> ${"abc://"?ensure_starts_with("[a-zA-Z]+://", "http://","i")}

<#noparse>${"abcabc"?index_of("bc")}</#noparse> -> ${"abcabc"?index_of("bc")} 
<#noparse>${"The 'foo' bean."?j_string}             </#noparse> ->   ${"The 'foo' bean."?j_string}                       
<#noparse>${ "Big Joe's \"right hand\""?js_string}  </#noparse> ->   ${ "Big Joe's \"right hand\""?js_string}  
<#noparse>${ "Big Joe's \"right hand\""?json_string}</#noparse> ->   ${ "Big Joe's \"right hand\""?json_string}

<#noparse>${"abcdefgh"?keep_after("de")}</#noparse> -> ${"abcdefgh"?keep_after("de")}
<#noparse>${"foo : bar"?keep_after(r"\s*:\s*", "r")}</#noparse> -> ${"foo : bar"?keep_after(r"\s*:\s*", "r")}
<#noparse>${"foo.bar.txt"?keep_after_last(".")}</#noparse> -> ${"foo.bar.txt"?keep_after_last(".")}
<#noparse>${"abcdef"?keep_before("de")}</#noparse> -> ${"abcdef"?keep_before("de")}
<#noparse>${"foo : bar"?keep_before(r"\s*:\s*", "r")}</#noparse> -> ${"foo : bar"?keep_before(r"\s*:\s*", "r")}
<#noparse>${"foo.bar.txt"?keep_after_last(".")}</#noparse> -> ${"foo.bar.txt"?keep_after_last(".")}

<#noparse>${"abcabc"?last_index_of("ab")}</#noparse> -> ${"abcabc"?last_index_of("ab")}
<#noparse>${"abcabc"?last_index_of("ab", 2)}</#noparse> -> ${"abcabc"?last_index_of("ab", 2)}

<#noparse>[${""?left_pad(5)}]</#noparse>  ->               [${""?left_pad(5)}]           
<#noparse>[${"a"?left_pad(5)}]</#noparse>  ->              [${"a"?left_pad(5)}]          
<#noparse>[${"ab"?left_pad(5)}]</#noparse>  ->             [${"ab"?left_pad(5)}]         
<#noparse>[${"abc"?left_pad(5)}]</#noparse>  ->            [${"abc"?left_pad(5)}]        
<#noparse>[${"abcd"?left_pad(5)}]</#noparse>  ->           [${"abcd"?left_pad(5)}]       
<#noparse>[${"abcde"?left_pad(5)}]</#noparse>  ->          [${"abcde"?left_pad(5)}]      
<#noparse>[${"abcdef"?left_pad(5)}]</#noparse>  ->         [${"abcdef"?left_pad(5)}]     
<#noparse>[${"abcdefg"?left_pad(5)}]</#noparse>  ->        [${"abcdefg"?left_pad(5)}]    
<#noparse>[${"abcdefgh"?left_pad(5)}]</#noparse>  ->       [${"abcdefgh"?left_pad(5)}] 
<#noparse>${"abcdefgh"?left_pad(5)}</#noparse> -> ${"abcdefgh"?left_pad(5)}

<#noparse>[${""?left_pad(5, "-")}]</#noparse>  ->          [${""?left_pad(5, "-")}]      
<#noparse>[${"a"?left_pad(5, "-")}]</#noparse>  ->         [${"a"?left_pad(5, "-")}]     
<#noparse>[${"ab"?left_pad(5, "-")}]</#noparse>  ->        [${"ab"?left_pad(5, "-")}]    
<#noparse>[${"abc"?left_pad(5, "-")}]</#noparse>  ->       [${"abc"?left_pad(5, "-")}]   
<#noparse>[${"abcd"?left_pad(5, "-")}]</#noparse>  ->      [${"abcd"?left_pad(5, "-")}]  
<#noparse>[${"abcde"?left_pad(5, "-")}]</#noparse>  ->     [${"abcde"?left_pad(5, "-")}]
<#noparse>${"abcde"?left_pad(5, "-")}</#noparse> -> ${"abcde"?left_pad(5, "-")}

<#noparse>[${""?left_pad(8, ".oO")}]</#noparse>  ->        [${""?left_pad(8, ".oO")}]    
<#noparse>[${"a"?left_pad(8, ".oO")}]</#noparse>  ->       [${"a"?left_pad(8, ".oO")}]   
<#noparse>[${"ab"?left_pad(8, ".oO")}]</#noparse>  ->      [${"ab"?left_pad(8, ".oO")}]  
<#noparse>[${"abc"?left_pad(8, ".oO")}]</#noparse>  ->     [${"abc"?left_pad(8, ".oO")}] 
<#noparse>[${"abcd"?left_pad(8, ".oO")}]</#noparse>  ->    [${"abcd"?left_pad(8, ".oO")}]
<#noparse>${"abcd"?left_pad(8, ".oO")}</#noparse> -> ${"abcd"?left_pad(8, ".oO")}

<#noparse>${"example"?length}</#noparse> ->  ${"example"?length}
<#noparse>${"GrEeN MoUsE"?lower_case}</#noparse> ->  ${"GrEeN MoUsE"?lower_case}

<#--Boolean-->
<#noparse>${"fooo"?matches("fo*")?c}</#noparse> -> ${"fooo"?matches("fo*")?c}
<#noparse>${"fooo bar"?matches("fo*")?c}</#noparse> -> ${"fooo bar"?matches("fo*")?c}

<#--Sequence-->
<#-- This built-in determines if the string exactly matches the pattern. Also, it returns the list of matching sub-strings. -->
<#noparse>${"foo bar fyo"?matches("f.?o")?c}</#noparse> -> ${"foo bar fyo"?matches("f.?o")?c}
<#noparse><#assign mt = "foo bar fyo"?matches("f.?o")></#noparse> -> <#assign mt = "foo bar fyo"?matches("f.?o")>
<#noparse><#list mt as m></#noparse>
<#list mt as m> 
- <#noparse>${m}</#noparse> -> ${m}
</#list>       

<#--regular expression contains groups (parentheses)-->
<#--1. Entire input match -->
<#noparse>${"John Doe"?matches(r"(\w+) (\w+)")?c}</#noparse> -> ${"John Doe"?matches(r"(\w+) (\w+)")?c}
<#noparse><#assign res = "John Doe"?matches(r"(\w+) (\w+)")></#noparse> -> <#assign res = "John Doe"?matches(r"(\w+) (\w+)")>
First name: <#noparse>${res?groups[1]}</#noparse> -> ${res?groups[1]}
Second name: <#noparse>${res?groups[2]}</#noparse> -> ${res?groups[2]}

<#--2. Subtring matches  -->
<#noparse>${"aa/rx; ab/r;"?matches("(.+?)/*(.+?);")?c}</#noparse> -> ${"aa/rx; ab/r;"?matches("(.+?)/*(.+?);")?c}
<#noparse><#assign res = "aa/rx; ab/r;"?matches("(.+?)/*(.+?);")></#noparse>
<#noparse><#list res as m></#noparse> 
<#list res as m>
  <#noparse>${m}</#noparse> -> ${m}
  <#noparse>${m?groups[1]}</#noparse> -> ${m?groups[1]}
  <#noparse>${m?groups[2]}</#noparse> -> ${m?groups[2]}
</#list><

<#noparse>${"1.23E6"?number}</#noparse> -> ${"1.23E6"?number}
<#noparse>${"1.5e-8"?number}</#noparse> -> ${"1.5e-8"?number}
<#noparse>${"NaN"?number}</#noparse> -> ${"NaN"?number}
<#noparse>${"INF"?number}</#noparse> -> ${"INF"?number}
<#noparse>${"-INF"?number}</#noparse> -> ${"-INF"?number}
<#noparse>${"Infinity"?number}</#noparse> -> ${"Infinity"?number}
<#noparse>${"-Infinity"?number}</#noparse> -> ${"-Infinity"?number}

<#noparse>${"this is a car acarus"?replace("car", "bulldozer")}</#noparse> -> ${"this is a car acarus"?replace("car", "bulldozer")}
<#noparse>${"foo"?replace("","|")}</#noparse> -> ${"foo"?replace("","|")}
<#noparse>${"foo : bar"?replace(r"\s*:\s*", "x","r")}</#noparse> -> ${"foo : bar"?replace(r"\s*:\s*", "x","r")}

<#noparse>[${""?right_pad(5)}]</#noparse>  ->               [${""?right_pad(5)}]           
<#noparse>[${"a"?right_pad(5)}]</#noparse>  ->              [${"a"?right_pad(5)}]          
<#noparse>[${"ab"?right_pad(5)}]</#noparse>  ->             [${"ab"?right_pad(5)}]         
<#noparse>[${"abc"?right_pad(5)}]</#noparse>  ->            [${"abc"?right_pad(5)}]        
<#noparse>[${"abcd"?right_pad(5)}]</#noparse>  ->           [${"abcd"?right_pad(5)}]       
<#noparse>[${"abcde"?right_pad(5)}]</#noparse>  ->          [${"abcde"?right_pad(5)}]      
<#noparse>[${"abcdef"?right_pad(5)}]</#noparse>  ->         [${"abcdef"?right_pad(5)}]     
<#noparse>[${"abcdefg"?right_pad(5)}]</#noparse>  ->        [${"abcdefg"?right_pad(5)}]    
<#noparse>[${"abcdefgh"?right_pad(5)}]</#noparse>  ->       [${"abcdefgh"?right_pad(5)}]   
            
<#noparse>[${""?right_pad(8, ".oO")}]</#noparse>  ->        [${""?right_pad(8, ".oO")}]    
<#noparse>[${"a"?right_pad(8, ".oO")}]</#noparse>  ->       [${"a"?right_pad(8, ".oO")}]   
<#noparse>[${"ab"?right_pad(8, ".oO")}]</#noparse>  ->      [${"ab"?right_pad(8, ".oO")}]  
<#noparse>[${"abc"?right_pad(8, ".oO")}]</#noparse>  ->     [${"abc"?right_pad(8, ".oO")}] 
<#noparse>[${"abcd"?right_pad(8, ".oO")}]</#noparse>  ->    [${"abcd"?right_pad(8, ".oO")}]

<#noparse>${"abcdef"?remove_beginning("abc")}</#noparse> -> ${"abcdef"?remove_beginning("abc")}
<#noparse>${"foobar"?remove_beginning("abc")}</#noparse> -> ${"foobar"?remove_beginning("abc")}

<#noparse>${"abcdef"?remove_ending("def")}</#noparse> -> ${"abcdef"?remove_ending("def")}
<#noparse>${"foobar"?remove_ending("def")}</#noparse> -> ${"foobar"?remove_ending("def")}

<#noparse>${"someMOOtestMOOtext"?split("MOO")}</#noparse>
<#noparse><#list "someMOOtestMOOtext"?split("MOO") as x></#noparse>
<#list "someMOOtestMOOtext"?split("MOO") as x>
- <#noparse>${x}</#noparse> -> ${x}
</#list>

<#noparse>${"some,,test,text"?split(",")}</#noparse> 
<#noparse><#list "some,,test,text,"?split(",") as x></#noparse> 
<#list "some,,test,text,"?split(",") as x>
- <#noparse>${x}</#noparse> -> ${x}
</#list>

<#noparse>${"redirect"?starts_with("red")?c}</#noparse> -> ${"redirect"?starts_with("red")?c} 
<#noparse>${"red"?starts_with("red")?c}</#noparse> -> ${"red"?starts_with("red")?c}

<#noparse>${"example"?string}</#noparse>   ->  ${"example"?string}
<#noparse>${1234455?string}</#noparse> ->  ${1234455?string}
<#noparse>${"1234455"?string}</#noparse>   ->  ${"1234455"?string}
<#noparse>${true?string}</#noparse>    ->  ${true?string}
<#noparse>${false?string}}</#noparse>  ->  ${false?string}}

(<#noparse>${"  green mouse  "?trim}</#noparse>) ->  (${"  green mouse  "?trim})

(<#noparse>${"  green mouse"?uncap_first}</#noparse>)    ->  (${"  green mouse"?uncap_first})
(<#noparse>${"GreEN mouse"?uncap_first}</#noparse>)  ->  (${"GreEN mouse"?uncap_first})
(<#noparse>${"- green mouse"?uncap_first}</#noparse>)    ->  (${"- green mouse"?uncap_first})

<#noparse>${"GrEeN MoUsE"?upper_case}</#noparse>    -> ${"GrEeN MoUsE"?upper_case}

<#noparse>${"a/b c"?url("utf-8")}</#noparse>   -> ${"a/b c"?url("utf-8")}
<#noparse>${"a/b c"?url_path("utf-8")}</#noparse>   -> ${"a/b c"?url_path("utf-8")}

<#-- ${"a/b c"?url("ISO-8895-2")} 
${"a/b c"?url_path("ISO-8895-2")}-->

<#noparse><#setting url_escaping_charset="UTF-8"></#noparse>  <#setting url_escaping_charset="UTF-8">
<#noparse>${"a/b c"?url}</#noparse>   -> ${"a/b c"?url}
<#noparse>${"a/b c"?url_path}</#noparse>   -> ${"a/b c"?url_path}


<#noparse><#assign words = " a bcd, . 1-2-3"?word_list></#noparse>  <#assign words = " a bcd, . 1-2-3"?word_list>
<#noparse><#list words as word> </#noparse>  
<#list words as word>
[<#noparse>${word}</#noparse>]   ->[${word}]
</#list>


<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Booleans/Date/Time/Numbers Example --------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Booleans/Date/Time/Numbers Example --------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Booleans/Date/Time/Numbers Example --------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Booleans/Date/Time/Numbers Example --------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Booleans/Date/Time/Numbers Example --------------------------->
<#noparse>${true?c}</#noparse> --> ${true?c}
<#noparse>${true?string("yes","no")}</#noparse> --> ${true?string("yes","no")}

<#noparse><#assign foo=true></#noparse> --> <#assign foo=true>
<#noparse>${foo?then('Y','N')}</#noparse> --> ${foo?then('Y','N')}

<#noparse><#assign foo=false></#noparse> --> <#assign foo=false>
<#noparse>${foo?then('Y','N')}</#noparse> --> ${foo?then('Y','N')}

<#noparse><#assign x=10></#noparse> --> <#assign x=10>
<#noparse><#assign y=20></#noparse> --> <#assign y=20>
<#--Prints100plusthemaximumofxandy: --> <#--Prints100plusthemaximumofxandy: --> 
<#noparse>${100+(x>y)?then(x,y)}</#noparse> --> ${100+(x>y)?then(x,y)}

<#noparse><#setting datetime_format="MMM dd, yyyy"></#noparse> --> <#setting datetime_format="MMM dd, yyyy">
<#noparse>${'Oct 25, 1995'?date?date_if_unknown}</#noparse> --> ${'Oct 25, 1995'?date?date_if_unknown}
<#noparse>${'3:05:30 PM'?time?time_if_unknown}</#noparse> --> ${'3:05:30 PM'?time?time_if_unknown}
<#noparse><#setting datetime_format="MMM dd,yyyy hh:mm:ss a"></#noparse> --> <#setting datetime_format="MMM dd,yyyy hh:mm:ss a">
<#noparse>${'Oct 25, 1995 03:05:00 PM'?datetime?datetime_if_unknown}</#noparse> --> ${'Oct 25, 1995 03:05:00 PM'?datetime?datetime_if_unknown}

 
<#--Predefinedformatnames: --> <#--Predefinedformatnames: --> 
<#noparse><#setting datetime_format="MMM dd,yyyy hh:mm:ss a"></#noparse> --> <#setting datetime_format="MMM dd,yyyy hh:mm:ss a">
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.short}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.short}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.medium}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.medium}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.long}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.long}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.full}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.full}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.xs}</#noparse> --> <#--XSDxs:time --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.xs}<#--XSDxs:time --> 
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.iso}</#noparse> --> <#--ISO8601time --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.iso}<#--ISO8601time --> 

<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.short}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.short}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.medium}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.medium}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.long}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.long}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.full}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.full}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.xs}</#noparse> --> <#--XSDxs:date --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.xs}<#--XSDxs:date --> 
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.iso}</#noparse> --> <#--ISO8601date --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.iso}<#--ISO8601date --> 

<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.short}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.short}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.medium}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.medium}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.long}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.long}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.full}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.full}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.medium_short}</#noparse> --> <#--mediumdate,shorttime --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.medium_short}<#--mediumdate,shorttime --> 
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.xs}</#noparse> --> <#--XSDxs:dateTime --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.xs}<#--XSDxs:dateTime --> 
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.iso}</#noparse> --> <#--ISO8601combineddateandtime --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.iso}<#--ISO8601combineddateandtime --> 

<#--AdvancedISO8601andXSDformatting: --> <#--AdvancedISO8601andXSDformatting: --> 
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.iso_m_u}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.iso_m_u}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.xs_ms_nz}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.xs_ms_nz}

<#--SimpleDateFormatpatterns: --> <#--SimpleDateFormatpatterns: --> 
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string["dd.MM.yyyy,HH:mm"]}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string["dd.MM.yyyy,HH:mm"]}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string["EEEE,MMMMdd,yyyy,hh:mma'('zzz')'"]}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string["EEEE,MMMMdd,yyyy,hh:mma'('zzz')'"]}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string["EEE,MMMd,''yy"]}</#noparse> --> ${"Oct 25,1995 03:05:00 PM"?datetime?string["EEE,MMMd,''yy"]}
<#noparse>${"Oct 25,1995 03:05:00 PM"?datetime?string.yyyy}</#noparse> --> <#--Sameas${"Oct 25,1995 03:05:00 PM"?string["yyyy"]} -->  --> ${"Oct 25,1995 03:05:00 PM"?datetime?string.yyyy}<#--Sameas${"Oct 25,1995 03:05:00 PM"?string["yyyy"]} --> 

<#noparse>${-5?abs}</#noparse> --> ${-5?abs}

<#noparse>${300000000?c}</#noparse> --> ${300000000?c}

<#noparse>${10000000000000000000000000000?is_infinite?c}</#noparse> --> ${10000000000000000000000000000?is_infinite?c}

<#noparse>${10000000000000000000000000000?is_nan?c}</#noparse> --> ${10000000000000000000000000000?is_nan?c}

<#noparse><#list 1..30 as n>${n?lower_abc} </#list></#noparse> --> <#list 1..30 as n>${n?lower_abc} </#list>


<#noparse><#assign testlist=[0, 1, -1, 0.5, 1.5, -0.5,-1.5, 0.25, -0.25, 1.75, -1.75]></#noparse>  -->  <#assign testlist=[0, 1, -1, 0.5, 1.5, -0.5,-1.5, 0.25, -0.25, 1.75, -1.75]>
<#noparse><#list testlist as result>${result}?floor=${result?floor}?ceiling=${result?ceiling}?round=${result?round}</#list></#noparse> --> 
<#list testlist as result>
${result}?floor=${result?floor}?ceiling=${result?ceiling}?round=${result?round}
</#list>

<#noparse><#assign x=42></#noparse> --> <#assign x=42>
<#noparse>${x}</#noparse> --> ${x}
<#noparse>${x?string}</#noparse> --> <#--the same as ${x} --> ${x?string} --> 
<#noparse>${x?string.number}</#noparse> --> ${x?string.number}
<#noparse>${x?string.currency}</#noparse> --> ${x?string.currency}
<#noparse>${x?string.percent}</#noparse> --> ${x?string.percent}
<#noparse>${x?string.computer}</#noparse> --> ${x?string.computer}

<#noparse><#setting number_format="currency"></#noparse> --> <#setting number_format="currency">
<#noparse><#assign x=42></#noparse> --> <#assign x=42>
<#noparse>${x}</#noparse> --> ${x}
<#noparse>${x?string}</#noparse> --> <#--the same as ${x} --> ${x?string} --> 
<#noparse>${x?string.number}</#noparse> --> ${x?string.number}
<#noparse>${x?string.currency}</#noparse> --> ${x?string.currency}
<#noparse>${x?string.percent}</#noparse> --> ${x?string.percent}


<#noparse><#assign x=1.234></#noparse><#assign x=1.234>
<#noparse>${x?string["0"]}</#noparse> --> ${x?string["0"]}
<#noparse>${x?string["0.#"]}</#noparse> --> ${x?string["0.#"]}
<#noparse>${x?string["0.##"]}</#noparse> --> ${x?string["0.##"]}
<#noparse>${x?string["0.###"]}</#noparse> --> ${x?string["0.###"]}
<#noparse>${x?string["0.####"]}</#noparse> --> ${x?string["0.####"]}

<#noparse>${1?string["000.00"]}</#noparse> --> ${1?string["000.00"]}
<#noparse>${12.1?string["000.00"]}</#noparse> --> ${12.1?string["000.00"]}
<#noparse>${123.456?string["000.00"]}</#noparse> --> ${123.456?string["000.00"]}

<#noparse>${1.2?string["0"]}</#noparse> --> ${1.2?string["0"]}
<#noparse>${1.8?string["0"]}</#noparse> --> ${1.8?string["0"]}
<#noparse>${1.5?string["0"]}</#noparse> --> <--1.5, rounded towards even neighbor
<#noparse>${2.5?string["0"]}</#noparse> --> <--2.5,rounded towards even neighbor

<#noparse>${12345?string["0.##E0"]}</#noparse> --> ${12345?string["0.##E0"]}

<#noparse>${12345?string("0.#")}</#noparse> --> ${12345?string("0.#")}
<#noparse>${12345?string["0.#"]}</#noparse> --> ${12345?string["0.#"]}

<#noparse><#setting number_format="0.##"></#noparse> --> <#setting number_format="0.##">
<#noparse>${1.234}</#noparse> --> ${1.234}


<#noparse><#setting number_format=",##0.00"></#noparse> --> <#setting number_format=",##0.00">
<#noparse><#setting locale="en_US"></#noparse> --> <#setting locale="en_US">
US people write:<#noparse>${12345678}</#noparse> --> US people write:${12345678}
<#noparse><#setting locale="hu"></#noparse> --> <#setting locale="hu">
German people write:<#noparse>${12345678}</#noparse> --> German people write:${12345678}

<#setting locale="en_US"> --> 
<#noparse>${10002.5?string[",000"]}</#noparse> --> ${10002.5?string[",000"]}
<#noparse>${10002.5?string[",000;; roundingMode=halfUp groupingSeparator=_"]}</#noparse> --> ${10002.5?string[",000;; roundingMode=halfUp groupingSeparator=_"]}

<#noparse><#list 1..30 as n>${n?upper_abc} </#list></#noparse> --> <#list 1..30 as n>${n?upper_abc} </#list>

<#noparse>${1305575275540?number_to_datetime}</#noparse> --> ${1305575275540?number_to_datetime}
<#noparse>${1305575275540?number_to_date}</#noparse> --> ${1305575275540?number_to_date}
<#noparse>${1305575275540?number_to_time}</#noparse> --> ${1305575275540?number_to_time}


<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Loop variable Example ---------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Loop variable Example ---------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Loop variable Example ---------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Loop variable Example ---------------------------------------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Loop variable Example ---------------------------------------->

<#noparse><#list ['a', 'b', 'c'] as i>${i?counter}: ${i}</#list></#noparse> --> 
<#list ['a', 'b', 'c'] as i>
${i?counter}: ${i}
</#list>

<#noparse><#list ['a', 'b', 'c'] as i>${i?has_next?c} </#list></#noparse>-->
<#list ['a', 'b', 'c'] as i>
${i?has_next?c} 
</#list>

<#noparse><#list ['a', 'b', 'c'] as i>${i?index}: ${i}</#list></#noparse>-->
<#list ['a', 'b', 'c'] as i>
${i?index}: ${i}
</#list>

<#noparse><#list ['a', 'b', 'c', 'd'] as i>${i?is_even_item?c} </#list></#noparse>-->
<#list ['a', 'b', 'c', 'd'] as i>
${i?is_even_item?c} 
</#list>

<#noparse><#list ['a', 'b', 'c'] as i>${i?is_first?c} </#list></#noparse>-->
<#list ['a', 'b', 'c'] as i>
${i?is_first?c} 
</#list>

<#noparse><#list ['a', 'b', 'c'] as i>${i?is_last?c} </#list></#noparse>-->
<#list ['a', 'b', 'c'] as i>
${i?is_last?c} 
</#list>

<#noparse><#list ['a', 'b', 'c', 'd'] as i>${i?is_odd_item?c} </#list></#noparse>-->
<#list ['a', 'b', 'c', 'd'] as i>
${i?is_odd_item?c} 
</#list>

<#noparse><#list ['a', 'b', 'c', 'd', 'e', 'f', 'g'] as i><tr class="${i?item_cycle('row1', 'row2', 'row3')}">${i}</tr></#list></#noparse>-->
<#list ['a', 'b', 'c', 'd', 'e', 'f', 'g'] as i>
<tr class="${i?item_cycle('row1', 'row2', 'row3')}">${i}</tr>
</#list>
    
<#noparse><#list ['a', 'b', 'c', 'd'] as i><tr class="${i?item_parity}Row">${i}</tr></#list></#noparse>-->
<#list ['a', 'b', 'c', 'd'] as i>
<tr class="${i?item_parity}Row">${i}</tr>
</#list>
    
<#noparse><#list ['a', 'b', 'c', 'd'] as i><tr class="row${i?item_parity_cap}">${i}</tr></#list></#noparse> -->
<#list ['a', 'b', 'c', 'd'] as i>
<tr class="row${i?item_parity_cap}">${i}</tr>
</#list>

<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Hashes/Type independent/Seldom used and Expert Example -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Hashes/Type independent/Seldom used and Expert Example -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Hashes/Type independent/Seldom used and Expert Example -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Hashes/Type independent/Seldom used and Expert Example -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Hashes/Type independent/Seldom used and Expert Example -------->

<#noparse><#assign myHash = { "name": "mouse", "price": 50 }></#noparse> --> <#assign myHash = { "name": "mouse", "price": 50 }>
<#noparse><#list myHash?keys as k>
  ${k}
</#list>
</#noparse> -->
<#list myHash?keys as k>
  ${k}
</#list>

<#noparse><#assign myHash = { "name": "mouse", "price": 50 }></#noparse> --> <#assign myHash = { "name": "mouse", "price": 50 }>
<#noparse><#list myHash?values as v>
  ${v}
</#list>
</#noparse> -->
<#list myHash?values as v>
  ${v}
</#list>

<#noparse><#list ['r', 'w', 'x', 's'] as flag>
  ${flag?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + flag)}
</#list>
</#noparse> -->
<#list ['r', 'w', 'x', 's'] as flag>
  ${flag?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + flag)}
</#list>

<#noparse>${"1+2"?eval}</#noparse> --> ${"1+2"?eval}

<#noparse>${""?has_content?c}</#noparse> --> ${""?has_content?c}

<#noparse><#assign x=["a", "b", "c"]></#noparse> --> <#assign x=["a", "b", "c"]>
<#noparse><#assign templateSource = r"<#list x as y>${y}</#list>"></#noparse> --> <#assign templateSource = r"<#list x as y>${y}</#list>">
<#-- Note: That r was needed so that the ${y} is not interpreted above -->
<#noparse><#assign inlineTemplate = templateSource?interpret></#noparse> --> <#assign inlineTemplate = templateSource?interpret>
<#noparse><@inlineTemplate /></#noparse> --> <@inlineTemplate />



<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Special Variable Reference -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Special Variable Reference -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Special Variable Reference -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Special Variable Reference -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Special Variable Reference -------->

<#noparse><#ftl output_format="HTML" auto_esc=false></#noparse>

<#noparse>Today is ${.now?date}</#noparse> -> Today is ${.now?date}
<#noparse>"Page generated: ${.now}"</#noparse> -> "Page generated: ${.now}"

<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Sequences -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Sequences -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Sequences -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Sequences -------->
<-- Apache FreeMarker 2.3.26 - Predefined Subroutines - Sequences -------->

<#assign seq = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']>

<#list seq?chunk(4) as row>
  <#list row as cell>${cell} </#list>
</#list>

<#list seq?chunk(4, '-') as row>
  <#list row as cell>${cell} </#list>
</#list>



<#assign ls = ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort?reverse?first>
<#list ls as i>${i} </#list>


<#assign colors = ["red", "green", "blue"]>
${colors?join(", ")}
${colors?join(", ", "-")}
${[]?join(", ", "-")}

${colors?join(", ", "-", ".")}
${[]?join(", ", "-", ".")}


<#assign ls = ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort?reverse?last>
<#list ls as i>${i} </#list>


<#assign ls = ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort?reverse>
<#list ls as i>${i} </#list>


<#assign x = ["red", 16, "blue", "cyan"]>
"blue": ${x?seq_contains("blue")?string("yes", "no")}
"yellow": ${x?seq_contains("yellow")?string("yes", "no")}
16: ${x?seq_contains(16)?string("yes", "no")}
"16": ${x?seq_contains("16")?string("yes", "no")}

<#assign colors = ["red", "green", "blue"]>
${colors?seq_index_of("blue")}
${colors?seq_index_of("red")}
${colors?seq_index_of("purple")}

<#assign names = ["Joe", "Fred", "Joe", "Susan"]>
No 2nd param: ${names?seq_index_of("Joe")}
-2: ${names?seq_index_of("Joe", -2)}
-1: ${names?seq_index_of("Joe", -1)}
 0: ${names?seq_index_of("Joe", 0)}
 1: ${names?seq_index_of("Joe", 1)}
 2: ${names?seq_index_of("Joe", 2)}
 3: ${names?seq_index_of("Joe", 3)}
 4: ${names?seq_index_of("Joe", 4)}
 
 
<#assign names = ["Joe", "Fred", "Joe", "Susan"]>
No 2nd param: ${names?seq_last_index_of("Joe")}
-2: ${names?seq_last_index_of("Joe", -2)}
-1: ${names?seq_last_index_of("Joe", -1)}
 0: ${names?seq_last_index_of("Joe", 0)}
 1: ${names?seq_last_index_of("Joe", 1)}
 2: ${names?seq_last_index_of("Joe", 2)}
 3: ${names?seq_last_index_of("Joe", 3)}
 4: ${names?seq_last_index_of("Joe", 4)}
 
 
<#assign ls = ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort>
 <#list ls as i>${i} </#list>
${ls?size}


<#assign ls = ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort>
<#list ls as i>${i} </#list>


<#assign ls = [
  {"name":"whale", "weight":2000},
  {"name":"Barbara", "weight":53},
  {"name":"zeppelin", "weight":-200},
  {"name":"aardvark", "weight":30},
  {"name":"beetroot", "weight":0.3}
]>
Order by name:
<#list ls?sort_by("name") as i>
- ${i.name}: ${i.weight}
</#list>

Order by weight:
<#list ls?sort_by("weight") as i>
- ${i.name}: ${i.weight}
</#list>


<#assign members = [
    {"name": {"first": "Joe", "last": "Smith"}, "age": 40},
    {"name": {"first": "Fred", "last": "Crooger"}, "age": 35},
    {"name": {"first": "Amanda", "last": "Fox"}, "age": 25}]>
Sorted by name.last:
<#list members?sort_by(['name', 'last']) as m>
- ${m.name.last}, ${m.name.first}: ${m.age} years old
</#list>

${"example"?cap_first}

<#noparse>${dbs.tablePattern}</#noparse> --> ${dbs.tablePattern}


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

${true?boolean}
${true?string("yes","no")}

Testing



${true?boolean}
${true?string("yes","no")}


