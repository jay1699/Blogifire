Ð
~C:\Users\jay.ahir\Desktop\Projects\DOTNET\Blogifier-main\Blogifier-main\src\Blogifier.Admin\BlogAuthenticationStateProvider.cs
	namespace 	
	Blogifier
 
. 
Admin 
{		 
public

 
class

 +
BlogAuthenticationStateProvider

 -
:

. /'
AuthenticationStateProvider

0 K
{ 
private 	
readonly
 

HttpClient 
_httpClient )
;) *
public +
BlogAuthenticationStateProvider	 (
(( )

HttpClient) 3

httpClient4 >
)> ?
{ 
_httpClient 
= 

httpClient 
; 
} 
public 
override	 
async 
Task 
< 
AuthenticationState 0
>0 1'
GetAuthenticationStateAsync2 M
(M N
)N O
{ 
Author 	
author
 
= 
await 
_httpClient $
.$ %
GetFromJsonAsync% 5
<5 6
Author6 <
>< =
(= >
$str> U
)U V
;V W
if 
( 
author 
!= 
null 
&& 
author 
.  
Email  %
!=& (
null) -
)- .
{ 
var 
claim 
= 
new 
Claim 
( 

ClaimTypes $
.$ %
Name% )
,) *
author+ 1
.1 2
Email2 7
)7 8
;8 9
var 
claimsIdentity 
= 
new 
ClaimsIdentity +
(+ ,
new, /
[/ 0
]0 1
{2 3
claim4 9
}: ;
,; <
$str= I
)I J
;J K
var 
claimsPrincipal 
= 
new 
ClaimsPrincipal -
(- .
claimsIdentity. <
)< =
;= >
return 

new 
AuthenticationState "
(" #
claimsPrincipal# 2
)2 3
;3 4
} 
else 
return   

new   
AuthenticationState   "
(  " #
new  # &
ClaimsPrincipal  ' 6
(  6 7
new  7 :
ClaimsIdentity  ; I
(  I J
)  J K
)  K L
)  L M
;  M N
}!! 
}"" 
}## ¹	
pC:\Users\jay.ahir\Desktop\Projects\DOTNET\Blogifier-main\Blogifier-main\src\Blogifier.Admin\BlogStateProvider.cs
	namespace 	
	Blogifier
 
. 
Admin 
{ 
public 

class 
BlogStateProvider "
{ 
public 
PostType 
PostType  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
PostType1 9
.9 :
Post: >
;> ?
public

 
event

 
Action

 
OnChange

 $
;

$ %
public 
void 
SetPostType 
(  
PostType  (
postType) 1
)1 2
{ 	
PostType 
= 
postType 
;  
NotifyStateChanged 
( 
)  
;  !
} 	
private 
void 
NotifyStateChanged '
(' (
)( )
=>* ,
OnChange- 5
?5 6
.6 7
Invoke7 =
(= >
)> ?
;? @
} 
} ¦
xC:\Users\jay.ahir\Desktop\Projects\DOTNET\Blogifier-main\Blogifier-main\src\Blogifier.Admin\Pages\Account\Login.razor.cs
	namespace 	
	Blogifier
 
. 
Admin 
. 
Pages 
.  
Account  '
{		 
public

 
partial

 
class

 
Login

 
{ 
public 
bool	 
	showError 
= 
false 
;  
public 

LoginModel	 
model 
= 
new 

LoginModel  *
{+ ,
Email- 2
=3 4
$str5 7
,7 8
Password9 A
=B C
$strD F
}G H
;H I
public 
async 
Task 
	LoginUser !
(! "
)" #
{ 
var	 
	returnUrl 
= 
$str !
;! "
var	 
uri 
= 
_navigationManager %
.% &
ToAbsoluteUri& 3
(3 4
_navigationManager4 F
.F G
UriG J
)J K
;K L
if	 
( 
QueryHelpers 
. 

ParseQuery $
($ %
uri% (
.( )
Query) .
). /
./ 0
TryGetValue0 ;
(; <
$str< G
,G H
outI L
varM P
paramQ V
)V W
)W X
	returnUrl 
= 
param 
. 
First #
(# $
)$ %
;% &
if 
( 
! 

IsLocalUrl 
( 
	returnUrl 
) 
) 
	returnUrl 
= 
$str 
; 
var	 
result 
= 
await 
Http  
.  !
PostAsJsonAsync! 0
<0 1

LoginModel1 ;
>; <
(< =
$str= O
,O P
modelQ V
)V W
;W X
if 
( 
result 
. 
IsSuccessStatusCode !
)! "
{ 
	showError 
= 
false 
; 
_navigationManager 
. 

NavigateTo !
(! "
	returnUrl" +
,+ ,
true- 1
)1 2
;2 3
}   
else!! 
{"" 
	showError## 
=## 
true## 
;## 
StateHasChanged$$ 
($$ 
)$$ 
;$$ 
}%% 
}&& 
static(( 
bool((	 

IsLocalUrl(( 
((( 
string(( 
url((  #
)((# $
{)) 
if** 
(** 
url** 	
.**	 

Contains**
 
(** 
$str** 
)** 
)** 
return++ 

false++ 
;++ 
Uri-- 
result-- 
;-- 
return.. 	
Uri..
 
... 
	TryCreate.. 
(.. 
url.. 
,.. 
UriKind.. $
...$ %
Relative..% -
,..- .
out../ 2
result..3 9
)..9 :
;..: ;
}// 
}00 
}11 
~C:\Users\jay.ahir\Desktop\Projects\DOTNET\Blogifier-main\Blogifier-main\src\Blogifier.Admin\Pages\Account\ProfileView.razor.cs
	namespace 	
	Blogifier
 
. 
Admin 
. 
Pages 
.  
Profile  '
{ 
public 
partial 
class 
Profile 
{ 
} 
}		 ª
{C:\Users\jay.ahir\Desktop\Projects\DOTNET\Blogifier-main\Blogifier-main\src\Blogifier.Admin\Pages\Account\Register.razor.cs
	namespace 	
	Blogifier
 
. 
Admin 
. 
Pages 
.  
Account  '
{ 
public 
partial 
class 
Register 
{ 
public		 
bool			 
	showError		 
=		 
false		 
;		  
public

 
RegisterModel

	 
model

 
=

 
new

 "
RegisterModel

# 0
{

1 2
Name

3 7
=

8 9
$str

: <
,

< =
Email

> C
=

D E
$str

F H
,

H I
Password

J R
=

S T
$str

U W
,

W X
PasswordConfirm

Y h
=

i j
$str

k m
}

n o
;

o p
public 
async	 
Task 
RegisterUser  
(  !
)! "
{ 
var 
result 
= 
await 
Http 
. 
PostAsJsonAsync *
<* +
RegisterModel+ 8
>8 9
(9 :
$str: O
,O P
modelQ V
)V W
;W X
if 
( 
result 
. 
IsSuccessStatusCode !
)! "
{ 
	showError 
= 
false 
; 
_navigationManager 
. 

NavigateTo !
(! "
$str" )
,) *
true+ /
)/ 0
;0 1
} 
else 
{ 
	showError 
= 
true 
; 
StateHasChanged 
( 
) 
; 
} 
} 
} 
} À
fC:\Users\jay.ahir\Desktop\Projects\DOTNET\Blogifier-main\Blogifier-main\src\Blogifier.Admin\Program.cs
	namespace		 	
	Blogifier		
 
.		 
Admin		 
{

 
public 
class 
Program 
{ 
public 
static	 
async 
Task 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 
var 
builder 
= "
WebAssemblyHostBuilder '
.' (
CreateDefault( 5
(5 6
args6 :
): ;
;; <
builder 

.
 
RootComponents 
. 
Add 
< 
App !
>! "
(" #
$str# )
)) *
;* +
builder 

.
 
Services 
. 
AddLocalization #
(# $
)$ %
;% &
builder 

.
 
Services 
. 

AddOptions 
( 
)  
;  !
builder 

.
 
Services 
.  
AddAuthorizationCore (
(( )
)) *
;* +
builder 

.
 
Services 
. 
	AddScoped 
( 
sp  
=>! #
new$ '

HttpClient( 2
{3 4
BaseAddress5 @
=A B
newC F
UriG J
(J K
builderK R
.R S
HostEnvironmentS b
.b c
BaseAddressc n
)n o
}p q
)q r
;r s
builder 

.
 
Services 
. 
	AddScoped 
< '
AuthenticationStateProvider 9
,9 :+
BlogAuthenticationStateProvider; Z
>Z [
([ \
)\ ]
;] ^
builder 

.
 
Services 
. 

AddToaster 
( 
config %
=>& (
{ 
config 

.
 
PositionClass 
= 
Defaults #
.# $
Classes$ +
.+ ,
Position, 4
.4 5
BottomRight5 @
;@ A
config 

.
 
PreventDuplicates 
= 
true #
;# $
config 

.
 
NewestOnTop 
= 
false 
; 
}   
)   
;   
builder"" 
."" 
Services"" 
."" 
AddSingleton"" )
<"") *
BlogStateProvider""* ;
>""; <
(""< =
)""= >
;""> ?
await$$ 
builder$$	 
.$$ 
Build$$ 
($$ 
)$$ 
.$$ 
RunAsync$$ !
($$! "
)$$" #
;$$# $
}%% 
}&& 
}'' 