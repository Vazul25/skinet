âT
@C:\programozas\udemy\skinet\API\Controllers\AccountController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
AccountController "
:# $
BaseApiController% 6
{ 
private 
readonly 
UserManager $
<$ %
AppUser% ,
>, -
_userManager. :
;: ;
private 
readonly 
SignInManager &
<& '
AppUser' .
>. /
_signInManager0 >
;> ?
private 
readonly 
ITokenService &
_tokenService' 4
;4 5
private 
readonly 
IMapper  
_mapper! (
;( )
public 
AccountController  
(  !
UserManager! ,
<, -
AppUser- 4
>4 5
userManager6 A
,A B
SignInManagerC P
<P Q
AppUserQ X
>X Y
signInManagerZ g
,g h
ITokenService 
tokenService &
,& '
IMapper( /
mapper0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_signInManager   
=   
signInManager   *
;  * +
_tokenService!! 
=!! 
tokenService!! (
;!!( )
_mapper"" 
="" 
mapper"" 
;"" 
}## 	
[%% 	
	Authorize%%	 
]%% 
[&& 	
HttpPut&&	 
(&& 
$str&& 
)&& 
]&& 
public'' 
async'' 
Task'' 
<'' 
ActionResult'' &
<''& '

AddressDto''' 1
>''1 2
>''2 3
UpdateUserAddress''4 E
(''E F

AddressDto''F P
address''Q X
)''X Y
{(( 	
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *5
)FindUserByClaimsPrincipleWithAddressAsync))* S
())S T
HttpContext))T _
.))_ `
User))` d
)))d e
;))e f
user** 
.** 
Address** 
=** 
_mapper** "
.**" #
Map**# &
<**& '

AddressDto**' 1
,**1 2
Address**3 :
>**: ;
(**; <
address**< C
)**C D
;**D E
var++ 
result++ 
=++ 
await++ 
_userManager++ +
.+++ ,
UpdateAsync++, 7
(++7 8
user++8 <
)++< =
;++= >
if,, 
(,, 
result,, 
.,, 
	Succeeded,,  
),,  !
return-- 
Ok-- 
(-- 
_mapper-- !
.--! "
Map--" %
<--% &
Address--& -
,--- .

AddressDto--/ 9
>--9 :
(--: ;
user--; ?
.--? @
Address--@ G
)--G H
)--H I
;--I J
return.. 

BadRequest.. 
(.. 
new.. !
ApiResponse.." -
(..- .
StatusCodes... 9
...9 :
Status400BadRequest..: M
,..M N
$str..O p
)..p q
)..q r
;..r s
}// 	
[11 	
	Authorize11	 
]11 
[22 	
HttpGet22	 
]22 
public33 
async33 
Task33 
<33 
ActionResult33 &
<33& '
UserDto33' .
>33. /
>33/ 0
GetCurrentUser331 ?
(33? @
)33@ A
{44 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) **
FindUserByClaimsPrincipleAsync77* H
(77H I
HttpContext77I T
.77T U
User77U Y
)77Y Z
;77Z [
return88 
new88 
UserDto88 
{99 
Email:: 
=:: 
user:: 
.:: 
Email:: "
,::" #
Token;; 
=;; 
_tokenService;; %
.;;% &
CreateToken;;& 1
(;;1 2
user;;2 6
);;6 7
,;;7 8
DisplayName<< 
=<< 
user<< "
.<<" #
DisplayName<<# .
}== 
;== 
}>> 	
[@@ 	
HttpGet@@	 
(@@ 
$str@@ 
)@@ 
]@@  
publicAA 
asyncAA 
TaskAA 
<AA 
ActionResultAA &
<AA& '
boolAA' +
>AA+ ,
>AA, -!
CheckEmailExistsAsyncAA. C
(AAC D
stringAAD J
emailAAK P
)AAP Q
{BB 	
returnCC 
(CC 
awaitCC 
_userManagerCC &
.CC& '
FindByEmailAsyncCC' 7
(CC7 8
emailCC8 =
)CC= >
)CC> ?
!=CC@ B
nullCCC G
;CCG H
}DD 	
[EE 	
	AuthorizeEE	 
]EE 
[FF 	
HttpGetFF	 
(FF 
$strFF 
)FF 
]FF 
publicGG 
asyncGG 
TaskGG 
<GG 
ActionResultGG &
<GG& '

AddressDtoGG' 1
>GG1 2
>GG2 3
GetUserAddressGG4 B
(GGB C
)GGC D
{HH 	
varKK 
userKK 
=KK 
awaitKK 
_userManagerKK )
.KK) *5
)FindUserByClaimsPrincipleWithAddressAsyncKK* S
(KKS T
HttpContextKKT _
.KK_ `
UserKK` d
)KKd e
;KKe f
returnLL 
_mapperLL 
.LL 
MapLL 
<LL 
AddressLL &
,LL& '

AddressDtoLL' 1
>LL1 2
(LL2 3
userLL4 8
.LL8 9
AddressLL9 @
)LL@ A
;LLA B
}MM 	
[NN 	
HttpPostNN	 
(NN 
$strNN 
)NN 
]NN 
publicOO 
asyncOO 
TaskOO 
<OO 
ActionResultOO &
<OO& '
UserDtoOO' .
>OO. /
>OO/ 0
LoginOO1 6
(OO6 7
LoginDtoOO7 ?
loginDtoOO@ H
)OOH I
{PP 	
varQQ 
userQQ 
=QQ 
awaitQQ 
_userManagerQQ )
.QQ) *
FindByEmailAsyncQQ* :
(QQ: ;
loginDtoQQ; C
.QQC D
EmailQQD I
)QQI J
;QQJ K
ifRR 
(RR 
userRR 
==RR 
nullRR 
)RR 
{SS 
returnTT 
UnauthorizedTT #
(TT# $
newTT$ '
ApiResponseTT( 3
(TT3 4
StatusCodesTT4 ?
.TT? @!
Status401UnauthorizedTT@ U
)TTU V
)TTV W
;TTW X
}UU 
varVV 
resultVV 
=VV 
awaitVV 
_signInManagerVV -
.VV- .$
CheckPasswordSignInAsyncVV. F
(VVF G
userVVG K
,VVK L
loginDtoVVM U
.VVU V
PasswordVVV ^
,VV^ _
falseVV_ d
)VVd e
;VVe f
ifWW 
(WW 
!WW 
resultWW 
.WW 
	SucceededWW !
)WW! "
returnXX 
UnauthorizedXX #
(XX# $
newXX$ '
ApiResponseXX( 3
(XX3 4
StatusCodesXX4 ?
.XX? @!
Status401UnauthorizedXX@ U
)XXU V
)XXV W
;XXW X
returnYY 
newYY 
UserDtoYY 
{ZZ 
Email[[ 
=[[ 
user[[ 
.[[ 
Email[[ "
,[[" #
Token\\ 
=\\ 
_tokenService\\ %
.\\% &
CreateToken\\& 1
(\\1 2
user\\2 6
)\\6 7
,\\7 8
DisplayName]] 
=]] 
user]] "
.]]" #
DisplayName]]# .
}^^ 
;^^ 
}__ 	
[`` 	
HttpPost``	 
(`` 
$str`` 
)`` 
]`` 
publicaa 
asyncaa 
Taskaa 
<aa 
ActionResultaa &
<aa& '
UserDtoaa' .
>aa. /
>aa/ 0
Registeraa1 9
(aa9 :
RegisterDtoaa: E
registerDtoaaF Q
)aaQ R
{bb 	
ifcc 
(cc !
CheckEmailExistsAsynccc %
(cc% &
registerDtocc& 1
.cc1 2
Emailcc2 7
)cc7 8
.cc8 9
Resultcc9 ?
.cc? @
Valuecc@ E
)ccE F
{dd 
returnee 
newee "
BadRequestObjectResultee 1
(ee1 2
newee2 5&
ApiValidationErrorResponseee6 P
{eeQ R
ErrorseeS Y
=eeZ [
newee\ _
[ee_ `
]ee` a
{eeb c
$streed z
}ee{ |
}ee} ~
)ee~ 
;	ee €
}ff 
vargg 
usergg 
=gg 
newgg 
AppUsergg "
{hh 
DisplayNameii 
=ii 
registerDtoii )
.ii) *
DisplayNameii* 5
,ii5 6
Emailjj 
=jj 
registerDtojj #
.jj# $
Emailjj$ )
,jj) *
UserNamekk 
=kk 
registerDtokk &
.kk& '
Emailkk' ,
}ll 
;ll 
varmm 
resultmm 
=mm 
awaitmm 
_userManagermm +
.mm+ ,
CreateAsyncmm, 7
(mm7 8
usermm8 <
,mm< =
registerDtomm> I
.mmI J
PasswordmmJ R
)mmR S
;mmS T
ifnn 
(nn 
!nn 
resultnn 
.nn 
	Succeedednn !
)nn! "
returnoo 

BadRequestoo !
(oo! "
newoo" %
ApiResponseoo& 1
(oo1 2
StatusCodesoo2 =
.oo= >
Status400BadRequestoo> Q
)ooQ R
)ooR S
;ooS T
returnpp 
newpp 
UserDtopp 
{qq 
Emailrr 
=rr 
userrr 
.rr 
Emailrr "
,rr" #
DisplayNamess 
=ss 
userss "
.ss" #
DisplayNamess# .
,ss. /
Tokentt 
=tt 
_tokenServicett %
.tt% &
CreateTokentt& 1
(tt1 2
usertt2 6
)tt6 7
}uu 
;uu 
}vv 	
}ww 
}xx Ó
@C:\programozas\udemy\skinet\API\Controllers\BaseApiController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
BaseApiController "
:# $
ControllerBase% 3
{ 
} 
} ö
?C:\programozas\udemy\skinet\API\Controllers\BasketController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
BasketController !
:" #
BaseApiController$ 5
{ 
private 
readonly 
IBasketRepository *
_basketRespository+ =
;= >
private 
readonly 
IMapper  
_mapper! (
;( )
public 
BasketController 
(  
IBasketRepository  1
basketRespository2 C
,C D
IMapperE L
mapperM S
)S T
{ 	
_basketRespository 
=  
basketRespository! 2
;2 3
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
CustomerBasket' 5
>5 6
>6 7
GetBasketById8 E
(E F
stringF L
idM O
)O P
{ 	
var 
basket 
= 
await 
_basketRespository 1
.1 2
GetBasketAsync2 @
(@ A
idA C
)C D
;D E
return 
Ok 
( 
basket 
?? 
new  #
CustomerBasket$ 2
(2 3
id3 5
)5 6
)6 7
;7 8
} 	
[ 	
HttpPost	 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '
CustomerBasket  ' 5
>  5 6
>  6 7
UpdateBasket  8 D
(  D E
CustomerBasketDto  E V
basket  W ]
)  ] ^
{!! 	
var"" 
customerBasket"" 
=""  
_mapper""! (
.""( )
Map"") ,
<"", -
CustomerBasketDto""- >
,""> ?
CustomerBasket""@ N
>""N O
(""O P
basket""P V
)""V W
;""W X
var## 
updatedBasket## 
=## 
await##  %
_basketRespository##& 8
.##8 9
UpdateBasketAsync##9 J
(##J K
customerBasket##K Y
)##Y Z
;##Z [
return$$ 
Ok$$ 
($$ 
updatedBasket$$ #
)$$# $
;$$$ %
}%% 	
[&& 	

HttpDelete&&	 
]&& 
public'' 
async'' 
Task'' 
DeleteBasketAsync'' +
(''+ ,
string'', 2
id''3 5
)''5 6
{(( 	
await)) 
_basketRespository)) $
.))$ %
DeleteBasketAsync))% 6
())6 7
id))7 9
)))9 :
;)): ;
}** 	
}++ 
},, 
>C:\programozas\udemy\skinet\API\Controllers\BuggyController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
BuggyController  
:! "
BaseApiController# 4
{ 
private 
readonly 
StoreContext %
_context& .
;. /
public 
BuggyController 
( 
StoreContext +
_context, 4
)4 5
{ 	
this 
. 
_context 
= 
_context $
;$ %
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
ActionResult 
GetNotFound '
(' (
)( )
{ 	
var 
thing 
= 
_context  
.  !
Products! )
.) *
Find* .
(. /
$num/ 4
)4 5
;5 6
if 
( 
thing 
== 
null 
) 
{ 
return 
NotFound 
(  
new  #
ApiResponse$ /
(/ 0
(0 1
int1 4
)4 5
HttpStatusCode5 C
.C D
NotFoundD L
)L M
)M N
;N O
} 
return 
Ok 
( 
) 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
]  
public   
ActionResult   
GetServerError   *
(  * +
)  + ,
{!! 	
var"" 
thing"" 
="" 
_context""  
.""  !
Products""! )
."") *
Find""* .
("". /
$num""/ 4
)""4 5
;""5 6
thing## 
.## 
ToString## 
(## 
)## 
;## 
return%% 
Ok%% 
(%% 
)%% 
;%% 
}'' 	
[(( 	
HttpGet((	 
((( 
$str(( 
)(( 
](( 
public)) 
ActionResult)) 
GetNotFoundRequest)) .
()). /
)))/ 0
{** 	
return++ 

BadRequest++ 
(++ 
new++ !
ApiResponse++" -
(++- .
(++. /
int++/ 2
)++2 3
HttpStatusCode++3 A
.++A B

BadRequest++B L
)++L M
)++M N
;++N O
},, 	
[-- 	
HttpGet--	 
(-- 
$str-- "
)--" #
]--# $
public.. 
ActionResult.. 
GetNotFoundRequest.. .
(... /
int../ 2
id..3 5
)..5 6
{// 	
return00 
Ok00 
(00 
)00 
;00 
}11 	
[33 	
HttpGet33	 
(33 
$str33 
)33 
]33 
[44 	
	Authorize44	 
]44 
public55 
ActionResult55 
<55 
string55 "
>55" #
GetSecretText55$ 1
(551 2
)552 3
{66 	
return77 
$str77 "
;77" #
}88 	
}99 
}:: •
>C:\programozas\udemy\skinet\API\Controllers\ErrorController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiExplorerSettings 
( 
	IgnoreApi "
=# $
true$ (
)( )
]) *
public		 

class		 
ErrorController		  
:		! "
BaseApiController		# 4
{

 
public 
IActionResult 
Error "
(" #
int# &
code' +
)+ ,
{ 	
return 
new 
ObjectResult #
(# $
new$ '
ApiResponse( 3
(3 4
code4 8
)8 9
)9 :
;: ;
} 	
} 
} ¬
AC:\programozas\udemy\skinet\API\Controllers\FallbackController.cs
	namespace		 	
API		
 
.		 
Controllers		 
{

 
public 

class 
FallbackController #
:$ %

Controller& 0
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
PhysicalFile 
(  
Path  $
.$ %
Combine% ,
(, -
	Directory- 6
.6 7
GetCurrentDirectory7 J
(J K
)K L
,L M
$strN W
,W X
$strY e
)e f
,f g
$strh s
)s t
;t u
} 	
} 
} ®.
?C:\programozas\udemy\skinet\API\Controllers\OrdersController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
OrdersController !
:" #
BaseApiController$ 5
{ 
private 
readonly 
IOrderService &
_orderService' 4
;4 5
private 
readonly 
IMapper  
_mapper! (
;( )
public 
OrdersController 
(  
IOrderService  -
orderService. :
,: ;
IMapper< C
mapperD J
)J K
{ 	
_orderService 
= 
orderService (
;( )
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
Order' ,
>, -
>- .
CreateOrder/ :
(: ;
OrderDto; C
orderDtoD L
)L M
{   	
var!! 
email!! 
=!! 
HttpContext!! #
.!!# $
User!!$ (
.!!( )%
RetriveEmailFromPrincipal!!) B
(!!B C
)!!C D
;!!D E
var"" 
address"" 
="" 
_mapper"" !
.""! "
Map""" %
<""% &

AddressDto""& 0
,""0 1
Address""2 9
>""9 :
("": ;
orderDto""; C
.""C D
ShipToAddress""D Q
)""Q R
;""R S
var## 
order## 
=## 
await## 
_orderService## +
.##+ ,
CreateOrderAsync##, <
(##< =
email##= B
,##B C
orderDto##D L
.##L M
DeliveryMethodId##M ]
,##] ^
orderDto##_ g
.##g h
BasketId##h p
,##p q
address##r y
)##y z
;##z {
if%% 
(%% 
order%% 
is%% 
null%% 
)%% 
{&& 
return'' 

BadRequest'' !
(''! "
new''" %
ApiResponse''& 1
(''1 2
$num''2 5
,''5 6
$str''7 O
)''O P
)''P Q
;''Q R
}(( 
return)) 
Ok)) 
()) 
order)) 
))) 
;)) 
}** 	
[,, 	
HttpGet,,	 
],, 
public-- 
async-- 
Task-- 
<-- 
ActionResult-- &
<--& '
IReadOnlyList--' 4
<--4 5
Order--5 :
>--: ;
>--; <
>--< =
GetOrdersForUser--> N
(--N O
)--O P
{.. 	
var// 
email// 
=// 
HttpContext// #
.//# $
User//$ (
.//( )%
RetriveEmailFromPrincipal//) B
(//B C
)//C D
;//D E
var00 
orders00 
=00 
await00 
_orderService00 ,
.00, -!
GetOrdersForUserAsync00- B
(00B C
email00C H
)00H I
;00I J
return11 
Ok11 
(11 
_mapper11 
.11 
Map11 !
<11! "
IReadOnlyList11" /
<11/ 0
Order110 5
>115 6
,116 7
IReadOnlyList118 E
<11E F
OrderToReturnDto11F V
>11V W
>11W X
(11X Y
orders11Y _
)11_ `
)11` a
;11a b
}22 	
[55 	
HttpGet55	 
(55 
$str55 
)55 
]55 
public66 
async66 
Task66 
<66 
ActionResult66 &
<66& '
IReadOnlyList66' 4
<664 5
OrderDto665 =
>66= >
>66> ?
>66? @
GetOrdersForUser66A Q
(66Q R
int66R U
id66V X
)66X Y
{77 	
var88 
email88 
=88 
HttpContext88 #
.88# $
User88$ (
.88( )%
RetriveEmailFromPrincipal88) B
(88B C
)88C D
;88D E
var99 
order99 
=99 
await99 
_orderService99 +
.99+ ,
GetOrderByIdAsync99, =
(99= >
id99> @
,99@ A
email99A F
)99F G
;99G H
if:: 
(:: 
order:: 
==:: 
null:: 
):: 
return;; 
NotFound;; 
(;;  
new;;  #
ApiResponse;;$ /
(;;/ 0
StatusCodes;;0 ;
.;;; <
Status404NotFound;;< M
);;M N
);;N O
;;;O P
return<< 
Ok<< 
(<< 
_mapper<< 
.<< 
Map<< !
<<<! "
Order<<" '
,<<' (
OrderToReturnDto<<( 8
><<8 9
(<<9 :
order<<: ?
)<<? @
)<<@ A
;<<A B
}== 	
[?? 	
HttpGet??	 
(?? 
$str?? "
)??" #
]??# $
public@@ 
async@@ 
Task@@ 
<@@ 
ActionResult@@ &
<@@& '
IReadOnlyList@@' 4
<@@4 5
Order@@5 :
>@@: ;
>@@; <
>@@< =
GetDeliveryMethods@@> P
(@@P Q
)@@Q R
{AA 	
returnBB 
OkBB 
(BB 
awaitBB 
_orderServiceBB )
.BB) *#
GetDeliveryMethodsAsyncBB* A
(BBA B
)BBB C
)BBC D
;BBD E
}CC 	
}GG 
}HH ¼.
AC:\programozas\udemy\skinet\API\Controllers\PaymentsController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
PaymentsController #
:$ %
BaseApiController& 7
{ 
private 
readonly 
IPaymentService (
_paymentService) 8
;8 9
private 
readonly 
ILogger  
<  !
IPaymentService! 0
>0 1
_logger2 9
;9 :
private 
readonly 
IConfiguration '
_config( /
;/ 0
private 
readonly 
string 
	_whSecret  )
;) *
public 
PaymentsController !
(! "
IPaymentService" 1
paymentService2 @
,@ A
ILoggerB I
<I J
IPaymentServiceJ Y
>Y Z
logger[ a
,a b
	Microsoftc l
.l m

Extensionsm w
.w x
Configuration	x …
.
… †
IConfiguration
† ”
config
• ›
)
› œ
{ 	
_paymentService 
= 
paymentService ,
;, -
_logger 
= 
logger 
; 
_config 
= 
config 
; 
	_whSecret 
= 
_config 
. 

GetSection )
() *
$str* C
)C D
.D E
ValueE J
;J K
} 	
[!! 	
	Authorize!!	 
]!! 
["" 	
HttpPost""	 
("" 
$str"" 
)"" 
]""  
public## 
async## 
Task## 
<## 
ActionResult## &
<##& '
CustomerBasket##' 5
>##5 6
>##6 7'
CreateOrUpdatePaymentIntent##8 S
(##S T
string##T Z
basketId##[ c
)##c d
{$$ 	
var%% 
basket%% 
=%% 
await%% 
_paymentService%% .
.%%. /'
CreateOrUpdatePaymentIntent%%/ J
(%%J K
basketId%%K S
)%%S T
;%%T U
if&& 
(&& 
basket&& 
is&& 
null&& 
)&& 
return'' 

BadRequest'' !
(''! "
new''" %
ApiResponse''& 1
(''1 2
StatusCodes''2 =
.''= >
Status400BadRequest''> Q
,''Q R
$str''S m
)''m n
)''n o
;''o p
return(( 
basket(( 
;(( 
})) 	
[++ 	
HttpPost++	 
(++ 
$str++ 
)++ 
]++ 
public,, 
async,, 
Task,, 
<,, 
ActionResult,, &
>,,& '
StripeWebhook,,( 5
(,,5 6
),,6 7
{-- 	
var.. 
json.. 
=.. 
await.. 
new..  
StreamReader..! -
(..- .
HttpContext... 9
...9 :
Request..: A
...A B
Body..B F
)..F G
...G H
ReadToEndAsync..H V
(..V W
)..W X
;..X Y
var// 
stripeEvent// 
=// 
EventUtility// *
.//* +
ConstructEvent//+ 9
(//9 :
json//: >
,//> ?
Request//@ G
.//G H
Headers//H O
[//O P
$str//P b
]//b c
,//c d
	_whSecret//e n
)//n o
;//o p
PaymentIntent00 
intent00  
;00  !
Order11 
order11 
;11 
switch22 
(22 
stripeEvent22 
.22  
Type22  $
)22$ %
{33 
case44 
$str44 /
:44/ 0
intent55 
=55 
(55 
PaymentIntent55 +
)55+ ,
stripeEvent55, 7
.557 8
Data558 <
.55< =
Object55= C
;55C D
_logger66 
.66 
LogInformation66 *
(66* +
$str66+ @
,66@ A
intent66B H
.66H I
Id66I K
)66K L
;66L M
order77 
=77 
await77 "
_paymentService77# 2
.772 3'
UpdateOrderPaymentSucceeded773 N
(77N O
intent77O U
.77U V
Id77V X
)77X Y
;77Y Z
_logger88 
.88 
LogInformation88 *
(88* +
$str88+ P
,88P Q
order88R W
.88W X
Id88X Z
)88Z [
;88[ \
break99 
;99 
case:: 
$str:: 4
:::4 5
intent;; 
=;; 
(;; 
PaymentIntent;; +
);;+ ,
stripeEvent;;, 7
.;;7 8
Data;;8 <
.;;< =
Object;;= C
;;;C D
_logger<< 
.<< 
LogInformation<< *
(<<* +
$str<<+ =
,<<= >
intent<<? E
.<<E F
Id<<F H
)<<H I
;<<I J
order== 
=== 
await== "
_paymentService==# 2
.==2 3$
UpdateOrderPaymentFailed==3 K
(==K L
intent==L R
.==R S
Id==S U
)==U V
;==V W
_logger>> 
.>> 
LogInformation>> *
(>>* +
$str>>+ N
,>>N O
order>>P U
.>>U V
Id>>V X
)>>X Y
;>>Y Z
break@@ 
;@@ 
}AA 
returnBB 
newBB 
EmptyResultBB "
(BB" #
)BB# $
;BB$ %
}CC 	
}DD 
}EE á:
AC:\programozas\udemy\skinet\API\Controllers\ProductsController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
ProductsController #
:$ %
BaseApiController& 7
{ 
private 
readonly 
IGenericRepository +
<+ ,
Product, 3
>3 4
_productRepo5 A
;A B
private 
readonly 
IGenericRepository +
<+ ,
ProductBrand, 8
>8 9

_brandRepo: D
;D E
private 
readonly 
IGenericRepository +
<+ ,
ProductType, 7
>7 8
	_typeRepo9 B
;B C
private 
readonly 
IMapper  
_mapper! (
;( )
public 
ProductsController !
(! "
IGenericRepository" 4
<4 5
Product5 <
>< =
productRepo> I
,I J
IGenericRepository 
< 
ProductBrand +
>+ ,
	brandRepo- 6
,6 7
IGenericRepository 
< 
ProductType *
>* +
typeRepo, 4
,4 5
IMapper   
mapper   
)   
{!! 	
_productRepo"" 
="" 
productRepo"" &
;""& '

_brandRepo## 
=## 
	brandRepo## "
;##" #
	_typeRepo$$ 
=$$ 
typeRepo$$  
;$$  !
_mapper%% 
=%% 
mapper%% 
;%% 
}&& 	
['' 	
Cached''	 
('' 
$num'' 
)'' 
]'' 
[(( 	
HttpGet((	 
](( 
public)) 
async)) 
Task)) 
<)) 
ActionResult)) &
<))& '
PagedResult))' 2
<))2 3

ProductDTO))3 =
>))= >
>))> ?
>))? @
GetProducts))A L
())L M
[))M N
	FromQuery))N W
]))W X
ProductSpecParams))Y j

specParams))k u
)))u v
{** 	
var++ 
	countSpec++ 
=++ 
new++ 3
'ProductWithFiltersForCountSpecification++  G
(++G H

specParams++H R
)++R S
;++S T
var,, 

totalItems,, 
=,, 
await,, "
_productRepo,,# /
.,,/ 0

CountAsync,,0 :
(,,: ;
	countSpec,,; D
),,D E
;,,E F
var.. 
spec.. 
=.. 
new.. 3
'ProductsWithTypesAndBrandsSpecification.. B
(..B C

specParams..C M
)..M N
;..N O
var// 
products// 
=// 
await//  
_productRepo//! -
.//- .
	ListAsync//. 7
(//7 8
spec//8 <
)//< =
;//= >
var00 
data00 
=00 
_mapper00 
.00 
Map00 "
<00" #
IReadOnlyList00# 0
<000 1
Product001 8
>008 9
,009 :
IReadOnlyList00; H
<00H I

ProductDTO00I S
>00S T
>00T U
(00U V
products00V ^
)00^ _
;00_ `
return11 
Ok11 
(11 
new11 
PagedResult11 %
<11% &

ProductDTO11& 0
>110 1
(111 2

specParams112 <
.11< =
	PageIndex11= F
,11F G

specParams11G Q
.11Q R
PageSize11R Z
,11Z [

totalItems11[ e
,11e f
data11f j
)11j k
)11k l
;11l m
}33 	
[44 	
Cached44	 
(44 
$num44 
)44 
]44 
[55 	
HttpGet55	 
(55 
$str55 
)55 
]55 
[66 	 
ProducesResponseType66	 
(66 
typeof66 $
(66$ %
ApiResponse66% 0
)660 1
,661 2
StatusCodes662 =
.66= >
Status200OK66> I
)66I J
]66J K
[77 	 
ProducesResponseType77	 
(77 
typeof77 $
(77$ %
ApiResponse77% 0
)770 1
,771 2
StatusCodes772 =
.77= >
Status404NotFound77> O
)77O P
]77P Q
public88 
async88 
Task88 
<88 
ActionResult88 &
<88& '

ProductDTO88' 1
>881 2
>882 3

GetProduct884 >
(88> ?
int88? B
id88C E
)88E F
{99 	
var:: 
spec:: 
=:: 
new:: 3
'ProductsWithTypesAndBrandsSpecification:: B
(::B C
id::C E
)::E F
;::F G
var;; 
product;; 
=;; 
await;; 
_productRepo;;  ,
.;;, -
GetEntityWithSpec;;- >
(;;> ?
spec;;? C
);;C D
;;;D E
if<< 
(<< 
product<< 
==<< 
null<< 
)<<  
return<<! '
NotFound<<( 0
(<<0 1
new<<1 4
ApiResponse<<5 @
(<<@ A
(<<A B
StatusCodes<<B M
.<<M N
Status404NotFound<<N _
)<<_ `
)<<` a
)<<a b
;<<b c
return== 
Ok== 
(== 
_mapper== 
.== 
Map== !
<==! "
Product==" )
,==) *

ProductDTO==+ 5
>==5 6
(==6 7
product==7 >
)==> ?
)==? @
;==A B
}>> 	
[@@ 	
Cached@@	 
(@@ 
$num@@ 
)@@ 
]@@ 
[AA 	
HttpGetAA	 
(AA 
$strAA 
)AA 
]AA 
publicBB 
asyncBB 
TaskBB 
<BB 
ActionResultBB &
<BB& '
IReadOnlyListBB' 4
<BB4 5
ProductBrandBB5 A
>BBA B
>BBB C
>BBC D
GetProductBrandsBBE U
(BBU V
)BBV W
{CC 	
varDD 
productBrandsDD 
=DD 
awaitDD  %

_brandRepoDD& 0
.DD0 1
ListAllAsyncDD1 =
(DD= >
)DD> ?
;DD? @
returnEE 
OkEE 
(EE 
productBrandsEE #
)EE# $
;EE$ %
}FF 	
[HH 	
CachedHH	 
(HH 
$numHH 
)HH 
]HH 
[II 	
HttpGetII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
ActionResultJJ &
<JJ& '
IReadOnlyListJJ' 4
<JJ4 5
ProductTypeJJ5 @
>JJ@ A
>JJA B
>JJB C
GetProductTypesJJD S
(JJS T
)JJT U
{KK 	
varLL 
productTypesLL 
=LL 
awaitLL $
	_typeRepoLL% .
.LL. /
ListAllAsyncLL/ ;
(LL; <
)LL< =
;LL= >
returnMM 
OkMM 
(MM 
productTypesMM "
)MM" #
;MM# $
}NN 	
}OO 
}PP î
HC:\programozas\udemy\skinet\API\Controllers\WeatherForecastController.cs
	namespace 	
API
 
. 
Controllers 
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiExplorerSettings 
( 
	IgnoreApi "
=# $
true% )
)) *
]* +
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return   

Enumerable   
.   
Range   #
(  # $
$num  $ %
,  % &
$num  ' (
)  ( )
.  ) *
Select  * 0
(  0 1
index  1 6
=>  7 9
new  : =
WeatherForecast  > M
{!! 
Date"" 
="" 
DateTime"" 
.""  
Now""  #
.""# $
AddDays""$ +
(""+ ,
index"", 1
)""1 2
,""2 3
TemperatureC## 
=## 
rng## "
.##" #
Next### '
(##' (
-##( )
$num##) +
,##+ ,
$num##- /
)##/ 0
,##0 1
Summary$$ 
=$$ 
	Summaries$$ #
[$$# $
rng$$$ '
.$$' (
Next$$( ,
($$, -
	Summaries$$- 6
.$$6 7
Length$$7 =
)$$= >
]$$> ?
}%% 
)%% 
.&& 
ToArray&& 
(&& 
)&& 
;&& 
}'' 	
}(( 
})) È
1C:\programozas\udemy\skinet\API\DTO\AddressDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 

AddressDto 
{		 
[

 	
Required

	 
]

 
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
Street 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
Zipcode 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ý
4C:\programozas\udemy\skinet\API\DTO\BasketItemDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
BasketItemDto 
{		 
[

 	
Required

	 
]

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
double 
. 
MaxValue "
," #
ErrorMessage# /
=0 1
$str1 O
)O P
]P Q
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
double 
. 
MaxValue  
,  !
ErrorMessage! -
=. /
$str0 O
)O P
]P Q
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
Brand 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
}   
}!! ®

8C:\programozas\udemy\skinet\API\DTO\CustomerBasketDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
CustomerBasketDto "
{		 
[

 	
Required

	 
]

 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
List 
< 
BasketItemDto !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
DeliveryMethodId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
PaymentIntentId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
ShippingPrice $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} Â
/C:\programozas\udemy\skinet\API\DTO\LoginDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
LoginDto 
{		 
[

 	
Required

	 
]

 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ï
/C:\programozas\udemy\skinet\API\DTO\OrderDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
OrderDto 
{		 
public

 
string

 
BasketId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
int 
DeliveryMethodId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

AddressDto 
ShipToAddress (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ÿ
3C:\programozas\udemy\skinet\API\DTO\OrderItemDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
OrderItemDto 
{ 
public 
int 
	ProductId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
decimal		 
Price		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
int

 
Quantity

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} ê
7C:\programozas\udemy\skinet\API\DTO\OrderToReturnDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
OrderToReturnDto !
{		 
public

 
string

 
Id

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
string 

BuyerEmail  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTimeOffset 
	OrderDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
Address 
ShipToAddress $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
DeliveryMethod $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
ShippingPrice $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
IReadOnlyList 
< 
OrderItemDto )
>) *

OrderItems+ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
decimal 
Subtotal 
{  !
get" %
;% &
set' *
;* +
}, -
public 
decimal 
Total 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} 
2C:\programozas\udemy\skinet\API\DTO\PagedResult.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
PagedResult 
< 
T 
> 
{ 
public 
PagedResult 
( 
int 
	pageIndex (
,( )
int* -
pageSize. 6
,6 7
int8 ;

totalItems< F
,F G
IReadOnlyListH U
<U V
TV W
>W X
dataY ]
)] ^
{ 	

PageNumber 
= 
	pageIndex "
;" #
PageSize 
= 
pageSize 
;  
AllResultsCount 
= 

totalItems (
;( )
Data 
= 
data 
; 
} 	
public 
IReadOnlyList 
< 
T 
> 
Data  $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
AllResultsCount #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
? 

PageNumber 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
PageSize 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ²

1C:\programozas\udemy\skinet\API\DTO\ProductDTO.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 

ProductDTO 
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ProductType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ProductBrand "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ò
2C:\programozas\udemy\skinet\API\DTO\RegisterDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
RegisterDto 
{		 
[

 	
Required

	 
]

 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
RegularExpression	 
( 
$str W
,W X
ErrorMessage 
= 
$str y
)y z
]z {
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ¼
.C:\programozas\udemy\skinet\API\DTO\UserDto.cs
	namespace 	
Core
 
. 
DTO 
{ 
public 

class 
UserDto 
{ 
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
DisplayName

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Å
6C:\programozas\udemy\skinet\API\Errors\ApiException.cs
	namespace 	
API
 
. 
Errors 
{ 
public 

class 
ApiException 
: 
ApiResponse  +
{		 
public

 
ApiException

 
(

 
int

 

statusCode

  *
,

* +
string

, 2
message

3 :
=

; <
null

= A
,

A B
string

C I
details

J Q
=

Q R
null

R V
)

V W
:

X Y
base

Z ^
(

^ _

statusCode

_ i
,

i j
message

k r
)

r s
{ 	
Details 
= 
details 
; 
} 	
public 
string 
Details 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} È
5C:\programozas\udemy\skinet\API\Errors\ApiResponse.cs
	namespace 	
API
 
. 
Errors 
{ 
public 

class 
ApiResponse 
{		 
public

 
ApiResponse

 
(

 
int

 

statusCode

 )
,

) *
string

+ 1
message

2 9
=

: ;
null

< @
)

@ A
{ 	

StatusCode 
= 

statusCode #
;# $
Message 
= 
message 
??  *
GetDefaultMessageForStatusCode! ?
(? @

statusCode@ J
)J K
;K L
} 	
public 
int 

StatusCode 
{ 
get  #
;# $
}% &
public 
string 
Message 
{ 
get  #
;# $
}% &
private 
string *
GetDefaultMessageForStatusCode 5
(5 6
int6 9

statusCode: D
)D E
{ 	
return 

statusCode 
switch $
{ 
$num 
=> 
$str 6
,6 7
$num 
=> 
$str 0
,0 1
$num 
=> 
$str 3
,3 4
$num 
=> 
$str	 ‚
,
‚ ƒ
_ 
=> 
null 
} 
; 
} 	
} 
} Ø
DC:\programozas\udemy\skinet\API\Errors\ApiValidationErrorResponse.cs
	namespace 	
API
 
. 
Errors 
{ 
public 

class &
ApiValidationErrorResponse +
:, -
ApiResponse. 9
{		 
public

 &
ApiValidationErrorResponse

 )
(

) *
)

* +
:

, -
base

. 2
(

2 3
$num

3 6
)

6 7
{ 	
} 	
public 
IEnumerable 
< 
string !
>! "
Errors# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} Ø
KC:\programozas\udemy\skinet\API\Extensions\ApplicationServicesExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class )
ApplicationServicesExtensions 5
{ 
public 
static 
IServiceCollection ("
AddApplicationServices) ?
(? @
this@ D
IServiceCollectionE W
servicesX `
)` a
{ 	
services 
. 
	AddScoped 
< 
ISeedService +
,+ ,
SeedService- 8
>8 9
(9 :
): ;
;; <
services 
. 
	AddScoped 
( 
typeof %
(% &
IGenericRepository& 8
<8 9
>9 :
): ;
,; <
typeof= C
(C D
GenericRepositoryD U
<U V
>V W
)W X
)X Y
;Y Z
services 
. 
	AddScoped 
< 
IBasketRepository 0
,0 1
BasketRepository2 B
>B C
(C D
)D E
;E F
services 
. 
	AddScoped 
< 
IOrderService ,
,, -
OrderService. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
IUnitOfWork *
,* +

UnitOfWork, 6
>6 7
(7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
IPaymentService .
,. /
PaymentService0 >
>> ?
(? @
)@ A
;A B
services 
. 
AddSingleton !
<! "!
IResponseCacheService" 7
,7 8 
ResponseCacheService8 L
>L M
(M N
)N O
;O P
services 
. 
	Configure 
< 
ApiBehaviorOptions 1
>1 2
(2 3
options3 :
=>; =
{   
options!! 
.!! ,
 InvalidModelStateResponseFactory!! 8
=!!9 :
actionContext!!; H
=>!!I K
{"" 
var## 
errors## 
=##  
actionContext##! .
.##. /

ModelState##/ 9
.##9 :
Where##: ?
(##? @

modelState##@ J
=>##K M

modelState##N X
.##X Y
Value##Y ^
.##^ _
Errors##_ e
.##e f
Count##f k
>##l m
$num##n o
)##o p
.$$ 

SelectMany$$ 
($$  

modelState$$  *
=>$$+ -

modelState$$. 8
.$$8 9
Value$$9 >
.$$> ?
Errors$$? E
)$$E F
.%% 
Select%% 
(%% 
error%% !
=>%%" $
error%%% *
.%%* +
ErrorMessage%%+ 7
)%%7 8
.%%8 9
ToArray%%9 @
(%%@ A
)%%A B
;%%B C
var&& 
errorResponse&& %
=&&& '
new&&( +&
ApiValidationErrorResponse&&, F
{'' 
Errors(( 
=((  
errors((! '
})) 
;)) 
return** 
new** "
BadRequestObjectResult** 5
(**5 6
errorResponse**6 C
)**C D
;**D E
}++ 
;++ 
},, 
),, 
;,, 
return.. 
services.. 
;.. 
}// 	
}00 
}11 ­
FC:\programozas\udemy\skinet\API\Extensions\ClaimsPrincipalExtension.cs
	namespace 	
API
 
. 

Extensions 
{		 
public

 

static

 
class

 $
ClaimsPrincipalExtension

 0
{ 
public 
static 
string %
RetriveEmailFromPrincipal 6
(6 7
this7 ;
ClaimsPrincipal< K
claimsPrincipalL [
)[ \
{ 	
return 
claimsPrincipal "
?" #
.# $
Claims$ *
?* +
.+ ,
FirstOrDefault, :
(: ;
x; <
=>= ?
x@ A
.A B
TypeB F
==G I

ClaimTypesJ T
.T U
EmailU Z
)Z [
?[ \
.\ ]
Value] b
;b c
} 	
} 
} Ö
GC:\programozas\udemy\skinet\API\Extensions\IdentityServiceExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class %
IdentityServiceExtensions 1
{ 
public 
static 
IServiceCollection (
AddIdentityServices) <
(< =
this= A
IServiceCollectionB T
servicesU ]
,] ^
IConfiguration_ m
confign t
)t u
{ 	
var 
builder 
= 
services "
." #
AddIdentityCore# 2
<2 3
AppUser3 :
>: ;
(; <
)< =
;= >
builder 
= 
new 
IdentityBuilder )
() *
builder* 1
.1 2
UserType2 :
,: ;
builder< C
.C D
ServicesD L
)L M
;M N
builder 
. $
AddEntityFrameworkStores ,
<, - 
AppIdentityDbContext- A
>A B
(B C
)C D
;D E
builder 
. 
AddSignInManager $
<$ %
SignInManager% 2
<2 3
AppUser3 :
>: ;
>; <
(< =
)= >
;> ?
services 
. 
	AddScoped 
< 
ITokenService ,
,, -
TokenService. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
<  
IIdentitySeedService 3
,3 4
IdentitySeedService5 H
>H I
(I J
)J K
;K L
services 
. 
AddAuthentication &
(& '
)' (
;( )
services 
. 
AddAuthentication &
(& '
JwtBearerDefaults' 8
.8 9 
AuthenticationScheme9 M
)M N
.N O
AddJwtBearerO [
([ \
options\ c
=>d f
{ 
options   
.   %
TokenValidationParameters   1
=  2 3
new  4 7%
TokenValidationParameters  8 Q
{!! $
ValidateIssuerSigningKey"" ,
=""- .
true""/ 3
,""3 4
IssuerSigningKey## $
=##% &
new##' * 
SymmetricSecurityKey##+ ?
(##? @
Encoding##@ H
.##H I
UTF8##I M
.##M N
GetBytes##N V
(##V W
config##W ]
[##] ^
$str##^ i
]##i j
)##j k
)##k l
,##l m
ValidIssuer$$ 
=$$  !
config$$" (
[$$( )
$str$$) 7
]$$7 8
,$$8 9
ValidateIssuer%% "
=%%# $
true%%% )
,%%) *
ValidateAudience&& $
=&&$ %
false&&% *
,&&* +
}'' 
;'' 
}(( 
)(( 
;(( 
return** 
services** 
;** 
}++ 	
},, 
}-- Æ
EC:\programozas\udemy\skinet\API\Extensions\SwaggerServiceExtension.cs
	namespace		 	
API		
 
.		 

Extensions		 
{

 
public 

static 
class #
SwaggerServiceExtension /
{ 
public 
static 
IServiceCollection (#
AddSwaggerDocumentation) @
(@ A
thisA E
IServiceCollectionF X
servicesY a
)a b
{ 	
services 
. 
AddSwaggerGen "
(" #
c# $
=>% '
{ 
c 
. 

SwaggerDoc 
( 
$str !
,! "
new# &
	Microsoft' 0
.0 1
OpenApi1 8
.8 9
Models9 ?
.? @
OpenApiInfo@ K
{L M
TitleN S
=T U
$strV b
,b c
Versiond k
=l m
$strn r
}s t
)t u
;u v
var 
securitySchema "
=# $
new% (!
OpenApiSecurityScheme) >
{ 
Description 
=  !
$str" :
,: ;
Name 
= 
$str *
,* +
In 
= 
ParameterLocation *
.* +
Header+ 1
,1 2
Type 
= 
SecuritySchemeType -
.- .
Http. 2
,2 3
Scheme 
= 
$str %
,% &
	Reference 
= 
new  #
OpenApiReference$ 4
{ 
Type 
= 
ReferenceType ,
., -
SecurityScheme- ;
,; <
Id 
= 
$str %
} 
} 
; 
c 
. !
AddSecurityDefinition '
(' (
$str( 0
,0 1
securitySchema2 @
)@ A
;A B
var   
securityRequirement   '
=  ( )
new  * -&
OpenApiSecurityRequirement  . H
{  I J
{  K L
securitySchema  M [
,  [ \
new  ] `
[  ` a
]  a b
{  c d
$str  e m
}  n o
}  p q
}  r s
;  s t
c!! 
.!! "
AddSecurityRequirement!! (
(!!( )
securityRequirement!!) <
)!!< =
;!!= >
}"" 
)"" 
;"" 
return## 
services## 
;## 
}$$ 	
public%% 
static%% 
IApplicationBuilder%% )-
!UseSwaggerDocumentationMiddleware%%* K
(%%K L
this%%L P
IApplicationBuilder%%Q d
app%%e h
)%%h i
{&& 	
app'' 
.'' 

UseSwagger'' 
('' 
)'' 
;'' 
app(( 
.(( 
UseSwaggerUI(( 
((( 
c(( 
=>(( !
c((" #
.((# $
SwaggerEndpoint(($ 3
(((3 4
$str((4 N
,((N O
$str((P _
)((_ `
)((` a
;((a b
return)) 
app)) 
;)) 
}** 	
}++ 
},, ¤
CC:\programozas\udemy\skinet\API\Extensions\UserManagerExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class !
UserManagerExtensions -
{ 
public 
static 
async 
Task  
<  !
AppUser! (
>( )5
)FindUserByClaimsPrincipleWithAddressAsync* S
(S T
thisT X
UserManagerY d
<d e
AppUsere l
>l m
inputn s
,s t
ClaimsPrincipal	u „
user
… ‰
)
‰ Š
{ 	
var 
email 
= 
user 
. 
Claims #
.# $
FirstOrDefault$ 2
(2 3
(3 4
x4 5
)5 6
=>7 9
x: ;
.; <
Type< @
==A C

ClaimTypesD N
.N O
EmailO T
)T U
?U V
.V W
ValueW \
;\ ]
return 
await 
input 
. 
Users $
.$ %
Include% ,
(, -
x- .
=>/ 1
x2 3
.3 4
Address4 ;
); <
.< = 
SingleOrDefaultAsync= Q
(Q R
xR S
=>T V
xW X
.X Y
EmailY ^
==_ a
emailb g
)g h
;h i
} 	
public 
static 
async 
Task  
<  !
AppUser! (
>( )*
FindUserByClaimsPrincipleAsync* H
(H I
thisI M
UserManagerN Y
<Y Z
AppUserZ a
>a b
inputc h
,h i
ClaimsPrincipalj y
userz ~
)~ 
{ 	
var 
email 
= 
user 
. 
Claims #
.# $
FirstOrDefault$ 2
(2 3
(3 4
x4 5
)5 6
=>7 9
x: ;
.; <
Type< @
==A C

ClaimTypesD N
.N O
EmailO T
)T U
?U V
.V W
ValueW \
;\ ]
return 
await 
input 
. 
Users $
.$ % 
SingleOrDefaultAsync% 9
(9 :
x: ;
=>< >
x? @
.@ A
EmailA F
==G I
emailJ O
)O P
;P Q
} 	
} 
} þ%
:C:\programozas\udemy\skinet\API\Helpers\CachedAttribute.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
CachedAttribute  
:! "
	Attribute# ,
,, -
IAsyncActionFilter. @
{ 
private 
readonly 
int 
_timeToLiveSeconds /
;/ 0
public 
CachedAttribute 
( 
int "
timeToLiveSeconds# 4
)4 5
{ 	
_timeToLiveSeconds 
=  
timeToLiveSeconds! 2
;2 3
} 	
public 
async 
Task "
OnActionExecutionAsync 0
(0 1"
ActionExecutingContext1 G
contextH O
,O P#
ActionExecutionDelegateQ h
nexti m
)m n
{ 	
var 
cacheService 
= 
context &
.& '
HttpContext' 2
.2 3
RequestServices3 B
.B C
GetRequiredServiceC U
<U V!
IResponseCacheServiceV k
>k l
(l m
)m n
;n o
var 
cacheKey 
= '
GenerateCacheKeyFromRequest 6
(6 7
context7 >
.> ?
HttpContext? J
.J K
RequestK R
)R S
;S T
var 
cacheResponse 
= 
await  %
cacheService& 2
.2 3"
GetCachedResponseAsync3 I
(I J
cacheKeyJ R
)R S
;S T
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
cacheResponse& 3
)3 4
)4 5
{ 
var 
contentResult !
=" #
new$ '
ContentResult( 5
{ 
Content 
= 
cacheResponse +
,+ ,
ContentType   
=    !
$str  " 4
,  4 5

StatusCode!! 
=!!  
$num!!! $
}"" 
;"" 
context## 
.## 
Result## 
=##  
contentResult##! .
;##. /
return$$ 
;$$ 
}%% 
var&& 
executedContext&& 
=&&  !
await&&" '
next&&( ,
(&&, -
)&&- .
;&&. /
if'' 
('' 
executedContext'' 
.'' 
Result'' %
is''& (
OkObjectResult'') 7
okObjectResult''8 F
)''F G
{(( 
await)) 
cacheService)) "
.))" #
CacheResponseAsync))# 5
())5 6
cacheKey))6 >
,))> ?
okObjectResult))@ N
.))N O
Value))O T
,))T U
TimeSpan))V ^
.))^ _
FromSeconds))_ j
())j k
_timeToLiveSeconds))k }
)))} ~
)))~ 
;	)) €
}** 
},, 	
private.. 
string.. '
GenerateCacheKeyFromRequest.. 2
(..2 3
HttpRequest..3 >
request..? F
)..F G
{// 	
var00 
queryParams00 
=00 
request00 %
.00% &
Query00& +
;00+ ,
if11 
(11 
queryParams11 
.11 
Count11 !
==11" $
$num11% &
)11& '
return22 
request22 
.22 
Path22 #
;22# $
var44 

keyBuilder44 
=44 
new44  
StringBuilder44! .
(44. /
)44/ 0
;440 1

keyBuilder55 
.55 
Append55 
(55 
$"55  
{55  !
request55! (
.55( )
Path55) -
}55- .
"55. /
)55/ 0
;550 1
foreach66 
(66 
var66 
(66 
key66 
,66 
value66 $
)66$ %
in66& (
queryParams66) 4
.664 5
OrderBy665 <
(66< =
x66= >
=>66? A
x66B C
.66C D
Key66D G
)66G H
)66H I
{77 

keyBuilder88 
.88 
Append88 !
(88! "
$"88" $
|88$ %
{88% &
key88& )
}88) *
-88* +
{88+ ,
value88, 1
}881 2
"882 3
)883 4
;884 5
}99 
return:: 

keyBuilder:: 
.:: 
ToString:: &
(::& '
)::' (
;::( )
};; 	
}<< 
}== °+
CC:\programozas\udemy\skinet\API\Helpers\CacheInvalidateAttribute.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class $
CacheInvalidateAttribute )
:* +
	Attribute, 5
,5 6
IAsyncActionFilter7 I
{ 
private 
readonly 
string 
[  
]  !

_cacheKeys" ,
=- .
null/ 3
;3 4
public $
CacheInvalidateAttribute '
(' (
string( .
[. /
]/ 0
	cacheKeys1 :
): ;
{ 	

_cacheKeys 
= 
	cacheKeys "
;" #
} 	
public 
async 
Task "
OnActionExecutionAsync 0
(0 1"
ActionExecutingContext1 G
contextH O
,O P#
ActionExecutionDelegateQ h
nexti m
)m n
{ 	
try 
{ 
var 
cacheService  
=! "
context# *
.* +
HttpContext+ 6
.6 7
RequestServices7 F
.F G
GetRequiredServiceG Y
<Y Z!
IResponseCacheServiceZ o
>o p
(p q
)q r
;r s
var 
	cacheKeys 
= (
GenerateCacheKeysFromRequest  <
(< =
context= D
.D E
HttpContextE P
.P Q
RequestQ X
)X Y
;Y Z
var 
tasks 
= 
new 
List  $
<$ %
Task% )
<) *
bool* .
>. /
>/ 0
(0 1
)1 2
;2 3
foreach 
( 
var 
key  
in! #
	cacheKeys$ -
)- .
{ 
tasks 
. 
Add 
( 
cacheService *
.* + 
InvalidateCachedData+ ?
(? @
key@ C
)C D
)D E
;E F
}   
await!! 
Task!! 
.!! 
WhenAll!! "
(!!" #
tasks!!# (
)!!( )
;!!) *
}"" 
catch## 
(## 
	Exception## 
error## "
)##" #
{$$ 
Console%% 
.%% 
	WriteLine%% !
(%%! "
$str%%" :
,%%: ;

_cacheKeys%%< F
,%%F G
error%%H M
)%%M N
;%%N O
}&& 
await(( 
next(( 
((( 
)(( 
;(( 
})) 	
private++ 
List++ 
<++ 
string++ 
>++ (
GenerateCacheKeysFromRequest++ 9
(++9 :
HttpRequest++: E
request++F M
)++M N
{,, 	
if-- 
(-- 

_cacheKeys-- 
==-- 
null-- "
)--" #
{.. 
return// 
new// 
List// 
<//  
string//  &
>//& '
(//' (
$num//( )
)//) *
{//* +
request//, 3
.//3 4
Path//4 8
}//9 :
;//: ;
}00 
var11 
createdCacheKeys11  
=11! "
new11# &
List11' +
<11+ ,
string11, 2
>112 3
(113 4

_cacheKeys114 >
.11> ?
Length11? E
)11E F
;11F G
var22  
routeValueDictionary22 $
=22% &
request22' .
.22. /
RouteValues22/ :
;22: ;
StringBuilder33 
builder33 !
=33" #
new33$ '
StringBuilder33( 5
(335 6
$num336 9
)339 :
;33: ;
for44 
(44 
int44 
i44 
=44 
$num44 
;44 
i44 
<44 

_cacheKeys44  *
.44* +
Length44+ 1
;441 2
i443 4
++444 6
)446 7
{55 
builder66 
.66 
Append66 
(66 

_cacheKeys66 )
[66) *
i66* +
]66+ ,
)66, -
;66- .
foreach77 
(77 
var77 

routeValue77 '
in77( * 
routeValueDictionary77+ ?
)77? @
{88 
if99 
(99 

routeValue99 "
.99" #
Key99# &
==99' )
$str99* 2
||993 5

routeValue996 @
.99@ A
Key99A D
==99E G
$str99H T
)99T U
{:: 
continue;;  
;;;  !
}<< 
builder== 
.== 
Replace== #
(==# $
$char==$ '
+==' (

routeValue==) 3
.==3 4
Key==4 7
+==7 8
$char==8 ;
,==; <
(=== >
string==> D
)==D E

routeValue==F P
.==P Q
Value==Q V
)==V W
;==W X
}>> 
createdCacheKeys??  
.??  !
Add??! $
(??$ %
builder??% ,
.??, -
ToString??- 5
(??5 6
)??6 7
)??7 8
;??8 9
}@@ 
returnAA 
createdCacheKeysAA #
;AA# $
}CC 	
}DD 
}EE ñ*
:C:\programozas\udemy\skinet\API\Helpers\MappingProfiles.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
MappingProfiles  
:! "
Profile# *
{ 
public 
MappingProfiles 
( 
)  
{ 	
	CreateMap 
< 
Product 
, 

ProductDTO )
>) *
(* +
)+ ,
. 
	ForMember 
( 
d 
=> 
d  !
.! "
ProductBrand" .
,. /
o0 1
=>2 4
o5 6
.6 7
MapFrom7 >
(> ?
s? @
=>A C
sD E
.E F
ProductBrandF R
.R S
NameS W
)W X
)X Y
. 
	ForMember 
( 
d 
=> 
d  !
.! "
ProductType" -
,- .
o/ 0
=>1 3
o4 5
.5 6
MapFrom6 =
(= >
s> ?
=>@ B
sC D
.D E
ProductTypeE P
.P Q
NameQ U
)U V
)V W
. 
	ForMember 
( 
d 
=> 
d 
.  

PictureUrl  *
,* +
o, -
=>. 0
o1 2
.2 3
MapFrom3 :
<: ;
ProductUrlResolver; M
>M N
(N O
)O P
)P Q
;Q R
	CreateMap 
< 
Core 
. 
Entities #
.# $
Identity$ ,
., -
Address- 4
,4 5

AddressDto6 @
>@ A
(A B
)B C
.C D

ReverseMapD N
(N O
)O P
;P Q
	CreateMap 
< 
BasketItemDto #
,# $

BasketItem% /
>/ 0
(0 1
)1 2
.2 3

ReverseMap3 =
(= >
)> ?
;? @
	CreateMap 
< 
CustomerBasketDto '
,' (
CustomerBasket) 7
>7 8
(8 9
)9 :
.: ;

ReverseMap; E
(E F
)F G
;G H
	CreateMap 
< 

AddressDto  
,  !
Core" &
.& '
Entities' /
./ 0
OrderAggregate0 >
.> ?
Address? F
>F G
(G H
)H I
;I J
	CreateMap 
< 
Order 
, 
OrderToReturnDto -
>- .
(. /
)/ 0
. 
	ForMember 
( 
d 
=> 
d 
.  
DeliveryMethod  .
,. /
o/ 0
=>0 2
o2 3
.3 4
MapFrom4 ;
(; <
s< =
=>= ?
s? @
.@ A
DeliveryMethodA O
.O P
	ShortNameP Y
)Y Z
)Z [
. 
	ForMember 
( 
d 
=> 
d 
.  
ShippingPrice  -
,- .
o. /
=>/ 1
o1 2
.2 3
MapFrom3 :
(: ;
s; <
=>< >
s> ?
.? @
DeliveryMethod@ N
.N O
PriceO T
)T U
)U V
;V W
	CreateMap 
< 
	OrderItem 
,  
OrderItemDto! -
>- .
(. /
)/ 0
. 
	ForMember 
( 
d 
=> 
d 
.  
	ProductId  )
,) *
o* +
=>+ -
o- .
.. /
MapFrom/ 6
(6 7
s7 8
=>8 :
s: ;
.; <
itemOrdered< G
.G H
ProductItemIdH U
)U V
)V W
. 
	ForMember 
( 
d 
=> 
d 
.  
ProductName  +
,+ ,
o, -
=>- /
o/ 0
.0 1
MapFrom1 8
(8 9
s9 :
=>: <
s< =
.= >
itemOrdered> I
.I J
ProductNameJ U
)U V
)V W
.   
	ForMember   
(   
d   
=>   
d   
.    

PictureUrl    *
,  * +
o  + ,
=>  , .
o  . /
.  / 0
MapFrom  0 7
(  7 8
s  8 9
=>  9 ;
s  ; <
.  < =
itemOrdered  = H
.  H I

PictureUrl  I S
)  S T
)  T U
.!! 
	ForMember!! 
(!! 
d!! 
=>!! 
d!!  !
.!!! "

PictureUrl!!" ,
,!!, -
o!!. /
=>!!0 2
o!!3 4
.!!4 5
MapFrom!!5 <
<!!< =!
OrderItemUrlResolvcer!!= R
>!!R S
(!!S T
)!!T U
)!!U V
;## 
}%% 	
}&& 
}'' ½
@C:\programozas\udemy\skinet\API\Helpers\OrderItemUrlResolvcer.cs
	namespace

 	
API


 
.

 
Helpers

 
{ 
public 

class !
OrderItemUrlResolvcer &
:' (
IValueResolver) 7
<7 8
	OrderItem8 A
,A B
OrderItemDtoC O
,O P
stringQ W
>W X
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
public !
OrderItemUrlResolvcer $
($ %
IConfiguration% 3
config4 :
): ;
{ 	
_config 
= 
config 
; 
} 	
public 
string 
Resolve 
( 
	OrderItem '
source( .
,. /
OrderItemDto0 <
destination= H
,H I
stringJ P

destMemberQ [
,[ \
ResolutionContext] n
contexto v
)v w
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
source& ,
., -
itemOrdered- 8
.8 9

PictureUrl9 C
)C D
)D E
{ 
return 
_config 
[ 
$str '
]' (
+) *
$str+ .
+/ 0
source1 7
.7 8
itemOrdered8 C
.C D

PictureUrlD N
;N O
} 
return 
null 
; 
} 	
} 
}   Ü
=C:\programozas\udemy\skinet\API\Helpers\ProductUrlResolver.cs
	namespace

 	
API


 
.

 
Helpers

 
{ 
public 

class 
ProductUrlResolver #
:$ %
IValueResolver& 4
<4 5
Product5 <
,< =

ProductDTO> H
,H I
stringJ P
>P Q
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
public 
ProductUrlResolver !
(! "
IConfiguration" 0
config1 7
)7 8
{ 	
_config 
= 
config 
; 
} 	
public 
string 
Resolve 
( 
Product %
source& ,
,, -

ProductDTO. 8
destination9 D
,D E
stringF L

destMemberM W
,W X
ResolutionContextY j
contextk r
)r s
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
source& ,
., -

PictureUrl- 7
)7 8
)8 9
{ 
return 
_config 
[ 
$str '
]' (
+( )
$str) ,
+- .
source/ 5
.5 6

PictureUrl6 @
;@ A
} 
return 
null 
; 
} 	
} 
} ¥%
=C:\programozas\udemy\skinet\API\Hosting\HostDataExtensions.cs
	namespace 	
API
 
. 
HostDataExtension 
{ 
public 

static 
class 
HostDataExtensions *
{ 
public 
static 
async 
Task  
<  !
IHost! &
>& '
MigrateDatabase( 7
<7 8
TContext8 @
>@ A
(A B
thisB F
IHostG L
hostM Q
)Q R
whereS X
TContextY a
:a b
	DbContextc l
{ 	
using 
( 
var 
scope 
= 
host "
." #
Services# +
.+ ,
CreateScope, 7
(7 8
)8 9
)9 :
{ 
var 
asd 
= 
Environment %
.% &"
GetEnvironmentVariable& <
(< =
$str= Q
)Q R
;R S
var 
serviceProvider #
=$ %
scope& +
.+ ,
ServiceProvider, ;
;; <
var 
loggerFactory !
=" #
serviceProvider$ 3
.3 4
GetRequiredService4 F
<F G
ILoggerFactoryG U
>U V
(V W
)W X
;X Y
try 
{ 
var 
context 
=  !
serviceProvider" 1
.1 2
GetRequiredService2 D
<D E
TContextE M
>M N
(N O
)O P
;P Q
await 
context !
.! "
Database" *
.* +
MigrateAsync+ 7
(7 8
)8 9
;9 :
} 
catch 
( 
	Exception "
ex# %
)% &
{ 
var 
logger 
=  
loggerFactory! .
.. /
CreateLogger/ ;
<; <
Program< C
>C D
(D E
)E F
;F G
logger   
.   
LogError   #
(  # $
ex  $ &
,  & '
$str  ( K
)  K L
;  L M
}!! 
}$$ 
return%% 
host%% 
;%% 
}&& 	
public'' 
static'' 
async'' 
Task''  
<''  !
IHost''! &
>''& '#
MigrateIdentityDatabase''( ?
(''? @
this''@ D
IHost''E J
host''K O
)''O P
{(( 	
using)) 
()) 
var)) 
scope)) 
=)) 
host)) #
.))# $
Services))$ ,
.)), -
CreateScope))- 8
())8 9
)))9 :
))): ;
{** 
var++ 
serviceProvider++ #
=++$ %
scope++& +
.+++ ,
ServiceProvider++, ;
;++; <
var,, 
loggerFactory,, !
=,," #
serviceProvider,,$ 3
.,,3 4
GetRequiredService,,4 F
<,,F G
ILoggerFactory,,G U
>,,U V
(,,V W
),,W X
;,,X Y
try-- 
{.. 
var// 
identityContext// '
=//( )
serviceProvider//* 9
.//9 :
GetRequiredService//: L
<//L M 
AppIdentityDbContext//M a
>//a b
(//b c
)//c d
;//d e
await00 
identityContext00 )
.00) *
Database00* 2
.002 3
MigrateAsync003 ?
(00? @
)00@ A
;00A B
var22 

userSeeder22 "
=22# $
serviceProvider22% 4
.224 5
GetRequiredService225 G
<22G H 
IIdentitySeedService22H \
>22\ ]
(22] ^
)22^ _
;22_ `
await33 

userSeeder33 $
.33$ %
SeedUsersAsync33% 3
(333 4
)334 5
;335 6
}44 
catch55 
(55 
	Exception55  
ex55! #
)55# $
{66 
var77 
logger77 
=77  
loggerFactory77! .
.77. /
CreateLogger77/ ;
<77; <
Program77< C
>77C D
(77D E
)77E F
;77F G
logger88 
.88 
LogError88 #
(88# $
ex88$ &
,88& '
$str88( K
)88K L
;88L M
}99 
}<< 
return== 
host== 
;== 
}>> 	
}?? 
}@@ —
AC:\programozas\udemy\skinet\API\Middleware\ExceptionMiddleware.cs
	namespace 	
API
 
. 

Middleware 
{ 
public 

class 
ExceptionMiddleware $
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 
ILogger  
<  !
ExceptionMiddleware! 4
>4 5
_logger6 =
;= >
private 
readonly 
IHostEnvironment )
_env* .
;. /
public 
ExceptionMiddleware "
(" #
RequestDelegate# 2
next3 7
,7 8
ILogger9 @
<@ A
ExceptionMiddlewareA T
>T U
loggerV \
,\ ]
IHostEnvironment^ n
envo r
)r s
{ 	
_next 
= 
next 
; 
_logger 
= 
logger 
; 
_env 
= 
env 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
try 
{ 
await 
_next 
( 
context #
)# $
;$ %
} 
catch   
(   
	Exception   
	exception   &
)  & '
{!! 
_logger"" 
."" 
LogError""  
(""  !
	exception""! *
,""* +
	exception"", 5
.""5 6
Message""6 =
)""= >
;""> ?
context## 
.## 
Response##  
.##  !
ContentType##! ,
=##- .
$str##/ A
;##A B
context$$ 
.$$ 
Response$$  
.$$  !

StatusCode$$! +
=$$, -
($$. /
int$$/ 2
)$$2 3
HttpStatusCode$$3 A
.$$A B
InternalServerError$$B U
;$$U V
var%% 
response%% 
=%% 
_env%% #
.%%# $
IsDevelopment%%$ 1
(%%1 2
)%%2 3
?&& 
new&& 
ApiException&& &
(&&& '
(&&' (
int&&( +
)&&+ ,
HttpStatusCode&&, :
.&&: ;
InternalServerError&&; N
,&&N O
	exception&&O X
.&&X Y
Message&&Y `
,&&` a
	exception'' 
.'' 

StackTrace'' (
.''( )
ToString'') 1
(''1 2
)''2 3
)''3 4
:(( 
new(( 
ApiException(( &
(((& '
(((' (
int((( +
)((+ ,
HttpStatusCode((, :
.((: ;
InternalServerError((; N
)((N O
;((O P
var)) 
serializerOptions)) %
=))& '
new))( +!
JsonSerializerOptions)), A
{))B C 
PropertyNamingPolicy))D X
=))X Y
JsonNamingPolicy))Y i
.))i j
	CamelCase))j s
}))s t
;))t u
var** 
json** 
=** 
JsonSerializer** )
.**) *
	Serialize*** 3
(**3 4
response**4 <
,**< =
serializerOptions**> O
)**O P
;**P Q
await++ 
context++ 
.++ 
Response++ &
.++& '

WriteAsync++' 1
(++1 2
json++2 6
)++6 7
;++7 8
},, 
}-- 	
}.. 
}// ¾
*C:\programozas\udemy\skinet\API\Program.cs
	namespace 	
API
 
{ 
public 

class 
Program 
{ 
public 
static 
async 
Task  
Main! %
(% &
string& ,
[, -
]- .
args/ 3
)3 4
{ 	
Console 
. 
	WriteLine 
( 
$str .
). /
;/ 0
( 
await 
( 
await 
CreateHostBuilder +
(+ ,
args, 0
)0 1
. 
Build 
( 
) 
. 
MigrateDatabase  
<  !
StoreContext! -
>- .
(. /
)/ 0
)0 1
. #
MigrateIdentityDatabase (
(( )
)) *
)* +
. 
Run 
( 
) 
; 
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
}   
)   
;   
}!! 
}"" œ0
*C:\programozas\udemy\skinet\API\Startup.cs
	namespace   	
API  
 
{!! 
public"" 

class"" 
Startup"" 
{## 
private$$ 
readonly$$ 
IConfiguration$$ '
_config$$( /
;$$/ 0
public&& 
Startup&& 
(&& 
IConfiguration&& %
config&&& ,
)&&, -
{'' 	
_config)) 
=)) 
config)) 
;)) 
}** 	
public.. 
void.. 
ConfigureServices.. %
(..% &
IServiceCollection..& 8
services..9 A
)..A B
{// 	
services00 
.00 
AddControllers00 #
(00# $
)00$ %
;00% &
services11 
.11 
AddDbContext11 !
<11! "
StoreContext11" .
>11. /
(11/ 0
options110 7
=>118 :
options22 
.22 
UseSqlServer22 $
(22$ %
_config33 
.33 
GetConnectionString33 /
(33/ 0
$str330 C
)33C D
)33D E
.33E F&
EnableSensitiveDataLogging33F `
(33` a
)33a b
)33b c
;33c d
services44 
.44 
AddDbContext44 !
<44! " 
AppIdentityDbContext44" 6
>446 7
(447 8
options448 ?
=>44@ B
{55 
options66 
.66 
UseSqlServer66 $
(66$ %
_config77 
.77 
GetConnectionString77 /
(77/ 0
$str770 D
)77D E
)77E F
.77F G&
EnableSensitiveDataLogging77G a
(77a b
)77b c
;77c d
}88 
)88 
;88 
services:: 
.:: 
AddSingleton:: !
<::! ""
IConnectionMultiplexer::" 8
,::8 9!
ConnectionMultiplexer::: O
>::O P
(::P Q
c::Q R
=>::S U
{;; 
var<< 
config<< 
=<<  
ConfigurationOptions<< 1
.<<1 2
Parse<<2 7
(<<7 8
_config<<8 ?
.<<? @
GetConnectionString<<@ S
(<<S T
$str<<T [
)<<[ \
,<<\ ]
true<<^ b
)<<b c
;<<c d
return== !
ConnectionMultiplexer== ,
.==, -
Connect==- 4
(==4 5
config==5 ;
)==; <
;==< =
}>> 
)>> 
;>> 
services?? 
.?? "
AddApplicationServices?? +
(??+ ,
)??, -
;??- .
services@@ 
.@@ 
AddIdentityServices@@ (
(@@( )
_config@@) 0
)@@0 1
;@@1 2
servicesAA 
.AA #
AddSwaggerDocumentationAA ,
(AA, -
)AA- .
;AA. /
servicesBB 
.BB 
AddAutoMapperBB "
(BB" #
typeofBB# )
(BB) *
MappingProfilesBB* 9
)BB9 :
)BB: ;
;BB; <
servicesCC 
.CC 
AddCorsCC 
(CC 
oCC 
=>CC !
{DD 
oEE 
.EE 
	AddPolicyEE 
(EE 
$strEE (
,EE( )
policyEE* 0
=>EE1 3
{FF 
policyGG 
.GG 
WithOriginsGG &
(GG& '
$strGG' ?
)GG? @
.GG@ A
AllowAnyHeaderGGA O
(GGO P
)GGP Q
.GGQ R
AllowAnyMethodGGR `
(GG` a
)GGa b
;GGb c
}HH 
)HH 
;HH 
}II 
)II 
;II 
}KK 	
publicNN 
voidNN 
	ConfigureNN 
(NN 
IApplicationBuilderNN 1
appNN2 5
,NN5 6
IWebHostEnvironmentNN7 J
envNNK N
)NNN O
{OO 	
appQQ 
.QQ 
UseMiddlewareQQ 
<QQ 
ExceptionMiddlewareQQ 1
>QQ1 2
(QQ2 3
)QQ3 4
;QQ4 5
appRR 
.RR +
UseStatusCodePagesWithReExecuteRR /
(RR/ 0
$strRR0 =
)RR= >
;RR> ?
appSS 
.SS 
UseHttpsRedirectionSS #
(SS# $
)SS$ %
;SS% &
appTT 
.TT 

UseRoutingTT 
(TT 
)TT 
;TT 
appUU 
.UU 
UseStaticFilesUU 
(UU 
)UU  
;UU  !
appVV 
.VV 
UseStaticFilesVV 
(VV 
newVV "
StaticFileOptionsVV# 4
{WW 
FileProviderXX 
=XX 
newXX   
PhysicalFileProviderXX! 5
(XX5 6
PathXX6 :
.XX: ;
CombineXX; B
(XXB C
	DirectoryXXD M
.XXM N
GetCurrentDirectoryXXN a
(XXa b
)XXb c
,XXc d
$strXXd m
)XXm n
)XXn o
,XXo p
RequestPathYY 
=YY 
$strYY &
}[[ 
)[[ 
;[[ 
app\\ 
.\\ 
UseCors\\ 
(\\ 
$str\\ $
)\\$ %
;\\% &
app]] 
.]] 
UseAuthentication]] !
(]]! "
)]]" #
;]]# $
app^^ 
.^^ 
UseAuthorization^^  
(^^  !
)^^! "
;^^" #
app__ 
.__ -
!UseSwaggerDocumentationMiddleware__ 1
(__1 2
)__2 3
;__3 4
app`` 
.`` 
UseEndpoints`` 
(`` 
	endpoints`` &
=>``' )
{aa 
	endpointsbb 
.bb 
MapControllersbb (
(bb( )
)bb) *
;bb* +
	endpointscc 
.cc #
MapFallbackToControllercc 1
(cc1 2
$strcc2 9
,cc9 :
$strcc; E
)ccE F
;ccF G
}dd 
)dd 
;dd 
}ee 	
}ff 
}gg ¯
2C:\programozas\udemy\skinet\API\WeatherForecast.cs
	namespace 	
API
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 