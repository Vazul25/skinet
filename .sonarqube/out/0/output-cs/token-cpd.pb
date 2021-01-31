ë
9C:\programozas\udemy\skinet\Models\Entities\BaseEntity.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 

class 

BaseEntity 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
} 
} ≤

9C:\programozas\udemy\skinet\Models\Entities\BasketItem.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 

class 

BasketItem 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Brand		 
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
 
Type

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ‡
=C:\programozas\udemy\skinet\Models\Entities\CustomerBasket.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 

class 
CustomerBasket 
{ 
public		 
CustomerBasket		 
(		 
string		 $
id		% '
)		' (
{

 	
Id 
= 
id 
; 
Items 
= 
new 
List 
< 

BasketItem '
>' (
(( )
)) *
;* +
} 	
public 
CustomerBasket 
( 
) 
{ 	
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
List 
< 

BasketItem 
> 
Items  %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
DeliveryMethodId $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
PaymentIntentId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
ShippingPrice $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ˘
?C:\programozas\udemy\skinet\Models\Entities\Identity\Address.cs
	namespace 	
Core
 
. 
Entities 
. 
Identity  
{ 
public 

class 
Address 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
LastName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Street

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Zipcode 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
	AppUserId 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
AppUser 
AppUser 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ä
?C:\programozas\udemy\skinet\Models\Entities\Identity\AppUser.cs
	namespace 	
Core
 
. 
Entities 
. 
Identity  
{ 
public 

class 
AppUser 
: 
IdentityUser '
{		 
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
public 
Address 
Address 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} É
EC:\programozas\udemy\skinet\Models\Entities\OrderAggregate\Address.cs
	namespace 	
Core
 
. 
Entities 
. 
OrderAggregate &
{ 
public 

class 
Address 
{ 
public		 
Address		 
(		 
)		 
{

 	
} 	
public 
Address 
( 
string 
	firstName '
,' (
string) /
lastName0 8
,8 9
string: @
streetA G
,G H
stringI O
cityP T
,T U
stringV \
state] b
,b c
stringd j
zipcodek r
)r s
{ 	
	FirstName 
= 
	firstName !
;! "
LastName 
= 
lastName 
;  
Street 
= 
street 
; 
City 
= 
city 
; 
State 
= 
state 
; 
Zipcode 
= 
zipcode 
; 
} 	
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Street 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Zipcode 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ›
LC:\programozas\udemy\skinet\Models\Entities\OrderAggregate\DeliveryMethod.cs
	namespace 	
Core
 
. 
Entities 
. 
OrderAggregate &
{ 
public 

class 
DeliveryMethod 
:  !

BaseEntity" ,
{ 
public		 
string		 
	ShortName		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
DeliveryTime

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ß
CC:\programozas\udemy\skinet\Models\Entities\OrderAggregate\Order.cs
	namespace 	
Core
 
. 
Entities 
. 
OrderAggregate &
{ 
public 

class 
Order 
: 

BaseEntity #
{ 
public		 
Order		 
(		 
)		 
{

 	
} 	
public 
Order 
( 
IReadOnlyList "
<" #
	OrderItem# ,
>, -

orderItems. 8
,8 9
string: @

buyerEmailA K
,K L
AddressM T
shipToAddressU b
,b c
DeliveryMethodd r
deliveryMethod	s Å
,
Å Ç
decimal 
subtotal 
, 
string $
paymentIntentId% 4
)4 5
{ 	

BuyerEmail 
= 

buyerEmail #
;# $
ShipToAddress 
= 
shipToAddress )
;) *
DeliveryMethod 
= 
deliveryMethod +
;+ ,

OrderItems 
= 

orderItems #
;# $
Subtotal 
= 
subtotal 
;  
PaymentIntentId 
= 
paymentIntentId -
;- .
} 	
public 
string 

BuyerEmail  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTimeOffset 
	OrderDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
DateTimeOffset8 F
.F G
NowG J
;J K
public 
Address 
ShipToAddress $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DeliveryMethod 
DeliveryMethod ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IReadOnlyList 
< 
	OrderItem &
>& '

OrderItems( 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
decimal 
Subtotal 
{  !
get" %
;% &
set' *
;* +
}, -
public 
OrderStatus 
Status !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
OrderStatus2 =
.= >
Pending> E
;E F
public 
string 
PaymentIntentId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public   
decimal   
GetTotal   
(    
)    !
{!! 	
return"" 
Subtotal"" 
+"" 
DeliveryMethod"" ,
."", -
Price""- 2
;""2 3
}## 	
}$$ 
}%% Æ
GC:\programozas\udemy\skinet\Models\Entities\OrderAggregate\OrderItem.cs
	namespace 	
Core
 
. 
Entities 
. 
OrderAggregate &
{ 
public 

class 
	OrderItem 
: 

BaseEntity &
{ 
public		 
	OrderItem		 
(		 
)		 
{

 	
} 	
public 
	OrderItem 
( 
ProductItemOrdered +
itemOrdered, 7
,7 8
decimal9 @
priceA F
,F G
intH K
quantityL T
)T U
{ 	
this 
. 
itemOrdered 
= 
itemOrdered *
;* +
Price 
= 
price 
; 
Quantity 
= 
quantity 
;  
} 	
public 
ProductItemOrdered !
itemOrdered" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
} 
} º
IC:\programozas\udemy\skinet\Models\Entities\OrderAggregate\OrderStatus.cs
	namespace 	
Core
 
. 
Entities 
. 
OrderAggregate &
{ 
public 

enum 
OrderStatus 
{		 
[

 	

EnumMember

	 
(

 
Value

 
=

 
$str

 $
)

$ %
]

% &
Pending 
, 
[ 	

EnumMember	 
( 
Value 
= 
$str ,
), -
]- .
PaymentRecivied 
, 
[ 	

EnumMember	 
( 
Value 
= 
$str ,
), -
]- .
PaymentFailed 
} 
} ò
PC:\programozas\udemy\skinet\Models\Entities\OrderAggregate\ProductItemOrdered.cs
	namespace 	
Core
 
. 
Entities 
. 
OrderAggregate &
{ 
public 

class 
ProductItemOrdered #
{ 
public		 
ProductItemOrdered		 !
(		! "
)		" #
{

 	
} 	
public 
ProductItemOrdered !
(! "
int" %
productItemId& 3
,3 4
string5 ;
productName< G
,G H
stringI O

pictureUrlP Z
)Z [
{ 	
ProductItemId 
= 
productItemId )
;) *
ProductName 
= 
productName %
;% &

PictureUrl 
= 

pictureUrl #
;# $
} 	
public 
int 
ProductItemId  
{! "
get# &
;& '
set( +
;+ ,
}, -
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Œ
6C:\programozas\udemy\skinet\Models\Entities\Product.cs
	namespace 	
Core
 
. 
Entities 
{ 
public		 

class		 
Product		 
:		 

BaseEntity		 %
{

 
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
Column	 
( 
TypeName 
= 
$str +
)+ ,
], -
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

ForeignKey	 
( 
$str #
)# $
]$ %
public 
ProductType 
ProductType &
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
ProductTypeId  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

ForeignKey	 
( 
$str $
)$ %
]% &
public 
ProductBrand 
ProductBrand (
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
ProductBrandId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¡
;C:\programozas\udemy\skinet\Models\Entities\ProductBrand.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 

class 
ProductBrand 
: 

BaseEntity  *
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ø
:C:\programozas\udemy\skinet\Models\Entities\ProductType.cs
	namespace 	
Core
 
. 
Entities 
{ 
public 

class 
ProductType 
: 

BaseEntity )
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ö
BC:\programozas\udemy\skinet\Models\Interfaces\IBasketRepository.cs
	namespace 	
DAL
 
. 
Data 
. 

Repository 
. 

Interfaces (
{ 
public		 

	interface		 
IBasketRepository		 &
{

 
Task 
< 
CustomerBasket 
> 
GetBasketAsync +
(+ ,
string, 2
basketId3 ;
); <
;< =
Task 
< 
CustomerBasket 
> 
UpdateBasketAsync .
(. /
CustomerBasket/ =
basket> D
)D E
;E F
Task 
< 
bool 
> 
DeleteBasketAsync $
($ %
string% +
basketId, 4
)4 5
;5 6
} 
} ı
CC:\programozas\udemy\skinet\Models\Interfaces\IGenericRepository.cs
	namespace 	
DAL
 
. 
Data 
. 

Repository 
. 

Interfaces (
{		 
public

 

	interface

 
IGenericRepository

 '
<

' (
T

( )
>

) *
where

+ 0
T

1 2
:

3 4

BaseEntity

5 ?
{ 
Task 
< 
T 
> 
GetByIdAsync 
( 
int  
id! #
)# $
;$ %
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
GetByIdsAsync ,
(, -
int- 0
[0 1
]1 2
id3 5
)5 6
;6 7
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
ListAllAsync +
(+ ,
), -
;- .
Task 
< 
T 
> 
GetEntityWithSpec !
(! "
ISpecification" 0
<0 1
T1 2
>2 3
spec4 8
)8 9
;9 :
Task 
< 
IReadOnlyList 
< 
T 
> 
> 
	ListAsync (
(( )
ISpecification) 7
<7 8
T8 9
>9 :
spec; ?
)? @
;@ A
Task 
< 
int 
> 

CountAsync 
( 
ISpecification +
<+ ,
T, -
>- .
spec/ 3
)3 4
;4 5
void 
Add 
( 
T 
entity 
) 
; 
void 
Update 
( 
T 
entity 
) 
; 
void 
Delete 
( 
T 
entity 
) 
; 
} 
} ‹

>C:\programozas\udemy\skinet\Models\Interfaces\IOrderService.cs
	namespace 	
DAL
 
. 
Services 
. 
OrderService #
{ 
public		 

	interface		 
IOrderService		 "
{

 
Task 
< 
Order 
> 
CreateOrderAsync $
($ %
string% +

buyerEmail, 6
,6 7
int8 ;
deliveryMethod< J
,J K
stringL R
basketIdS [
,[ \
Address] d
shippingAddresse t
)t u
;u v
Task 
< 
IReadOnlyList 
< 
Order  
>  !
>! "!
GetOrdersForUserAsync# 8
(8 9
string9 ?

buyerEmail@ J
)J K
;K L
Task 
< 
Order 
> 
GetOrderByIdAsync %
(% &
int& )
id* ,
,, -
string. 4

buyerEmail5 ?
)? @
;@ A
Task 
< 
IReadOnlyList 
< 
DeliveryMethod )
>) *
>* +#
GetDeliveryMethodsAsync, C
(C D
)D E
;E F
} 
} Ì
@C:\programozas\udemy\skinet\Models\Interfaces\IPaymentService.cs
	namespace 	
Core
 
. 

Interfaces 
{		 
public

 

	interface

 
IPaymentService

 $
{ 
Task 
< 
CustomerBasket 
> '
CreateOrUpdatePaymentIntent 8
(8 9
string9 ?
basketId@ H
)H I
;I J
Task 
< 
Order 
> '
UpdateOrderPaymentSucceeded /
(/ 0
string0 6
paymentIntentId7 F
)F G
;G H
Task 
< 
Order 
> $
UpdateOrderPaymentFailed ,
(, -
string- 3
paymentIntentId4 C
)C D
;D E
} 
} Á
HC:\programozas\udemy\skinet\Models\Interfaces\IProductBrandRepository.cs
	namespace 	
DAL
 
. 
Data 
. 

Repository 
. 

Interfaces (
{ 
public 

	interface #
IProductBrandRepository ,
{ 
}		 
}

 …	
CC:\programozas\udemy\skinet\Models\Interfaces\IProductRepository.cs
	namespace 	
DAL
 
. 
Data 
. 

Repository 
. 

Interfaces (
{ 
public		 

	interface		 
IProductRepository		 '
{

 
public 
Task 
< 
Product 
> 
GetProductByIdAsync 0
(0 1
int1 4
id5 7
)7 8
;8 9
public 
Task 
< 
IReadOnlyList !
<! "
Product" )
>) *
>* +
GetProducts, 7
(7 8
)8 9
;9 :
public 
Task 
< 
IReadOnlyList !
<! "
ProductBrand" .
>. /
>/ 0!
GetProductBrandsAsync1 F
(F G
)G H
;H I
public 
Task 
< 
IReadOnlyList !
<! "
ProductType" -
>- .
>. / 
GetProductTypesAsync0 D
(D E
)E F
;F G
} 
} Â
GC:\programozas\udemy\skinet\Models\Interfaces\IProductTypeRepository.cs
	namespace 	
DAL
 
. 
Data 
. 

Repository 
. 

Interfaces (
{ 
public 

	interface "
IProductTypeRepository +
{ 
}		 
}

 ï
FC:\programozas\udemy\skinet\Models\Interfaces\IResponseCacheService.cs
	namespace 	
Core
 
. 

Interfaces 
{ 
public 

	interface !
IResponseCacheService *
{		 
Task

 
CacheResponseAsync

 
(

  
string

  &
cacheKey

' /
,

/ 0
object

1 7
response

8 @
,

@ A
TimeSpan

B J

timeToLive

K U
)

U V
;

V W
Task 
< 
string 
> "
GetCachedResponseAsync +
(+ ,
string, 2
cacheKey3 ;
); <
;< =
Task 
< 
bool 
>  
InvalidateCachedData '
(' (
string( .
cacheKey/ 7
)7 8
;8 9
} 
} ﬁ
=C:\programozas\udemy\skinet\Models\Interfaces\ISeedService.cs
	namespace 	
DAL
 
. 
Services 
. 
SeedService "
." #

Interfaces# -
{		 
public

 

	interface

 
ISeedService

 !
{ 
IList 
< 
Product 
> 
Products 
{  !
get" %
;% &
}' (
IList 
< 
ProductBrand 
> 
ProductBrands )
{* +
get, /
;/ 0
}1 2
IList 
< 
ProductType 
> 
ProductTypes '
{( )
get* -
;- .
}/ 0
IList 
< 
DeliveryMethod 
> 
DeliveryMethods -
{. /
get0 3
;3 4
}5 6
} 
} «
>C:\programozas\udemy\skinet\Models\Interfaces\ITokenService.cs
	namespace 	
DAL
 
. 
Services 
. 
TokenService #
{ 
public 

	interface 
ITokenService "
{		 
public

 
string

 
CreateToken

 !
(

! "
AppUser

" )
user

* .
)

. /
;

/ 0
} 
} «
<C:\programozas\udemy\skinet\Models\Interfaces\IUnitOfWork.cs
	namespace		 	
DAL		
 
.		 
Data		 
{

 
public 

	interface 
IUnitOfWork  
:! "
IDisposable# .
{ 
IGenericRepository 
< 
TEntity "
>" #

Repository$ .
<. /
TEntity/ 6
>6 7
(7 8
)8 9
where: ?
TEntity@ G
:G H

BaseEntityI S
;S T
Task 
< 
int 
> 
Complete 
( 
) 
; 
} 
} ∞(
FC:\programozas\udemy\skinet\Models\Specifications\BaseSpecification.cs
	namespace 	
DAL
 
. 
Specifications 
{ 
public		 

class		 
BaseSpecification		 "
<		" #
T		# $
>		$ %
:		& '
ISpecification		( 6
<		6 7
T		7 8
>		8 9
{

 
public 
BaseSpecification  
(  !
)! "
{ 	
} 	
public 
BaseSpecification  
(  !

Expression! +
<+ ,
Func, 0
<0 1
T1 2
,2 3
bool4 8
>8 9
>9 :
criteria; C
)C D
{ 	
Criteria 
= 
criteria 
;  
} 	
public 

Expression 
< 
Func 
< 
T  
,  !
bool" &
>& '
>' (
Criteria) 1
{2 3
get4 7
;7 8
}9 :
public 
List 
< 

Expression 
< 
Func #
<# $
T$ %
,% &
object' -
>- .
>. /
>/ 0
Includes1 9
{: ;
get< ?
;? @
}A B
=C D
newE H
ListI M
<M N

ExpressionN X
<X Y
FuncY ]
<] ^
T^ _
,_ `
objecta g
>g h
>h i
>i j
(j k
)k l
;l m
public 

Expression 
< 
Func 
< 
T  
,  !
object" (
>( )
>) *
OrderBy+ 2
{3 4
get5 8
;8 9
private: A
setB E
;E F
}G H
public 

Expression 
< 
Func 
< 
T  
,  !
object" (
>( )
>) *
OrderByDescending+ <
{= >
get? B
;B C
privateD K
setL O
;O P
}Q R
public 
List 
< 
string 
> 
IncludeStrings *
{+ ,
get- 0
;0 1
}2 3
=4 5
new6 9
List: >
<> ?
string? E
>E F
(F G
)G H
;H I
public 
int 
Take 
{ 
get 
; 
private &
set' *
;* +
}, -
public 
int 
Skip 
{ 
get 
; 
private &
set' *
;* +
}, -
public!! 
bool!! 
IsPagingEnabled!! #
{!!$ %
get!!& )
;!!) *
private!!+ 2
set!!3 6
;!!6 7
}!!8 9
	protected## 
void## 

AddInclude## !
(##! "

Expression##" ,
<##, -
Func##- 1
<##1 2
T##2 3
,##3 4
object##5 ;
>##; <
>##< =
includeExpression##> O
)##O P
{$$ 	
Includes%% 
.%% 
Add%% 
(%% 
includeExpression%% *
)%%* +
;%%+ ,
}&& 	
	protected'' 
void'' 

AddInclude'' !
(''! "
string''" (
includeString'') 6
)''6 7
{(( 	
IncludeStrings)) 
.)) 
Add)) 
()) 
includeString)) ,
))), -
;))- .
}** 	
	protected++ 
void++ 

AddOrderBy++ !
(++! "

Expression++" ,
<++, -
Func++- 1
<++1 2
T++2 3
,++3 4
object++5 ;
>++; <
>++< =
orderByExpression++> O
)++O P
{,, 	
OrderBy-- 
=-- 
orderByExpression-- '
;--' (
}.. 	
	protected// 
void//  
AddOrderByDescending// +
(//+ ,

Expression//, 6
<//6 7
Func//7 ;
<//; <
T//< =
,//= >
object//? E
>//E F
>//F G'
orderByDescencingExpression//H c
)//c d
{00 	
OrderByDescending11 
=11 '
orderByDescencingExpression11  ;
;11; <
}22 	
	protected33 
void33 
ApplyPaging33 "
(33" #
int33# &
skip33' +
,33+ ,
int33- 0
take331 5
)335 6
{44 	
Skip55 
=55 
skip55 
;55 
Take66 
=66 
take66 
;66 
IsPagingEnabled77 
=77 
true77 "
;77" #
}88 	
}99 
}:: ◊
CC:\programozas\udemy\skinet\Models\Specifications\ISpecification.cs
	namespace 	
DAL
 
. 
Specifications 
{ 
public 

	interface 
ISpecification #
<# $
T$ %
>% &
{		 

Expression

 
<

 
Func

 
<

 
T

 
,

 
bool

 
>

  
>

  !
Criteria

" *
{

+ ,
get

- 0
;

0 1
}

2 3
List 
< 

Expression 
< 
Func 
< 
T 
, 
object  &
>& '
>' (
>( )
Includes* 2
{3 4
get5 8
;8 9
}: ;

Expression 
< 
Func 
< 
T 
, 
object !
>! "
>" #
OrderBy$ +
{, -
get. 1
;1 2
}3 4

Expression 
< 
Func 
< 
T 
, 
object !
>! "
>" #
OrderByDescending$ 5
{6 7
get8 ;
;; <
}= >
int 
Take 
{ 
get 
; 
} 
int 
Skip 
{ 
get 
; 
} 
bool 
IsPagingEnabled 
{ 
get "
;" #
}$ %
} 
} ì
XC:\programozas\udemy\skinet\Models\Specifications\OrderByPaymentIntentIdSpecification.cs
	namespace		 	
Core		
 
.		 
Specifications		 
{

 
public 

class /
#OrderByPaymentIntentIdSpecification 4
:4 5
BaseSpecification5 F
<F G
OrderG L
>L M
{ 
public /
#OrderByPaymentIntentIdSpecification 2
(2 3
string3 9
paymentIntentId: I
)I J
:J K
baseK O
(O P
oP Q
=>Q S
oS T
.T U
PaymentIntentIdU d
==d f
paymentIntentIdf u
)u v
{ 	
} 	
} 
} ¨
\C:\programozas\udemy\skinet\Models\Specifications\OrdersWithItemsAndOrderingSpecification.cs
	namespace 	
DAL
 
. 
Specifications 
{ 
public		 

class		 3
'OrdersWithItemsAndOrderingSpecification		 8
:		9 :
BaseSpecification		; L
<		L M
Order		M R
>		R S
{

 
public 3
'OrdersWithItemsAndOrderingSpecification 6
(6 7
)7 8
{ 	
} 	
public 3
'OrdersWithItemsAndOrderingSpecification 6
(6 7
string7 =
email> C
)C D
:E F
baseG K
(K L
oL M
=>N P
(Q R
oR S
.S T

BuyerEmailT ^
==_ a
emailb g
)g h
)h i
{ 	

AddInclude 
( 
o 
=> 
o 
. 

OrderItems (
)( )
;) *

AddInclude 
( 
o 
=> 
o 
. 
DeliveryMethod ,
), -
;- . 
AddOrderByDescending  
(  !
o! "
=># %
o& '
.' (
	OrderDate( 1
)1 2
;2 3
} 	
public 3
'OrdersWithItemsAndOrderingSpecification 6
(6 7
int7 :
id; =
,= >
string? E
emailF K
)K L
:M N
baseO S
(S T
oT U
=>V X
oY Z
.Z [

BuyerEmail[ e
==f h
emaili n
&&o q
or s
.s t
Idt v
==w y
idz |
)| }
{ 	

AddInclude 
( 
o 
=> 
o 
. 

OrderItems (
)( )
;) *

AddInclude 
( 
o 
=> 
o 
. 
DeliveryMethod ,
), -
;- .
} 	
} 
} ª
FC:\programozas\udemy\skinet\Models\Specifications\ProductSpecParams.cs
	namespace 	
DAL
 
. 
Specifications 
{ 
public 

class 
ProductSpecParams "
{ 
private		 
const		 
int		 
MaxPageSize		 %
=		& '
$num		( *
;		* +
public

 
int

 
	PageIndex

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
=

+ ,
$num

- .
;

. /
private 
int 
	_pageSize 
= 
$num  !
;! "
public 
int 
PageSize 
{ 	
get 
=> 
	_pageSize 
; 
set 
=> 
	_pageSize 
= 
Math #
.# $
Min$ '
(' (
MaxPageSize( 3
,3 4
Math5 9
.9 :
Max: =
(= >
value> C
,C D
$numD E
)E F
)F G
;G H
} 	
public 
int 
? 
BrandId 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
TypeId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Sort 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
_search 
; 
public 
string 
Search 
{ 	
get 
=> 
_search 
; 
set 
=> 
_search 
= 
value "
." #
ToLower# *
(* +
)+ ,
;, -
} 	
} 
} ï!
\C:\programozas\udemy\skinet\Models\Specifications\ProductsWithTypesAndBrandsSpecification.cs
	namespace 	
DAL
 
. 
Specifications 
{ 
public		 

class		 3
'ProductsWithTypesAndBrandsSpecification		 8
:		9 :
BaseSpecification		; L
<		L M
Product		M T
>		T U
{

 
public 3
'ProductsWithTypesAndBrandsSpecification 6
(6 7
ProductSpecParams7 H

specParamsI S
)S T
:U V
baseW [
([ \
p\ ]
=>^ `
(	 

string
 
. 
IsNullOrEmpty 
( 

specParams )
.) *
Search* 0
)0 1
||2 4
p5 6
.6 7
Name7 ;
.; <
ToLower< C
(C D
)D E
.E F
ContainsF N
(N O

specParamsO Y
.Y Z
SearchZ `
)` a
)a b
&&c e
(	 

!
 

specParams 
. 
BrandId 
. 
HasValue &
||' )
p* +
.+ ,
ProductBrandId, :
==; =

specParams> H
.H I
BrandIdI P
)P Q
&&R T
(	 

!
 

specParams 
. 
TypeId 
. 
HasValue %
||& (
p) *
.* +
ProductTypeId+ 8
==9 ;

specParams< F
.F G
TypeIdG M
)M N
) 	
{ 	

AddInclude 
( 
p 
=> 
p 
. 
ProductType )
)) *
;* +

AddInclude 
( 
p 
=> 
p 
. 
ProductBrand *
)* +
;+ ,

AddOrderBy 
( 
p 
=> 
p 
. 
Name "
)" #
;# $
ApplyPaging 
( 
Math 
. 
Max  
(  !

specParams! +
.+ ,
PageSize, 4
*5 6
(7 8

specParams8 B
.B C
	PageIndexC L
-M N
$numO P
)P Q
,Q R
$numS T
)T U
,U V

specParamsW a
.a b
PageSizeb j
)j k
;k l
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &

specParams& 0
.0 1
Sort1 5
)5 6
)6 7
{ 
switch 
( 

specParams "
." #
Sort# '
)' (
{ 
case 
$str #
:# $

AddOrderBy "
(" #
p# $
=>% '
p( )
.) *
Price* /
)/ 0
;0 1
break 
; 
case 
$str $
:$ % 
AddOrderByDescending ,
(, -
p- .
=>/ 1
p2 3
.3 4
Price4 9
)9 :
;: ;
break 
; 
default 
: 
break   
;   
}!! 
}"" 
}$$ 	
public%% 3
'ProductsWithTypesAndBrandsSpecification%% 6
(%%6 7
int%%7 :
id%%; =
)%%= >
:%%? @
base%%A E
(%%E F
p%%F G
=>%%H J
p%%K L
.%%L M
Id%%M O
==%%P R
id%%S U
)%%U V
{&& 	

AddInclude'' 
('' 
p'' 
=>'' 
p'' 
.'' 
ProductType'' )
)'') *
;''* +

AddInclude(( 
((( 
p(( 
=>(( 
p(( 
.(( 
ProductBrand(( *
)((* +
;((+ ,
})) 	
}** 
}++ ÿ
\C:\programozas\udemy\skinet\Models\Specifications\ProductWithFiltersForCountSpecification.cs
	namespace 	
DAL
 
. 
Specifications 
{ 
public 

class 3
'ProductWithFiltersForCountSpecification 8
:9 :
BaseSpecification; L
<L M
ProductM T
>T U
{		 
public

 3
'ProductWithFiltersForCountSpecification

 6
(

6 7
ProductSpecParams

7 H

specParams

I S
)

S T
:

U V
base

W [
(

[ \
p

\ ]
=>

^ `
(
 
string 
. 
IsNullOrEmpty 
(  

specParams  *
.* +
Search+ 1
)1 2
||3 5
p6 7
.7 8
Name8 <
.< =
ToLower= D
(D E
)E F
.F G
ContainsG O
(O P

specParamsP Z
.Z [
Search[ a
)a b
)b c
&&d f
(
 
! 

specParams 
. 
BrandId 
. 
HasValue '
||( *
p+ ,
., -
ProductBrandId- ;
==< >

specParams? I
.I J
BrandIdJ Q
)Q R
&&S U
(
 
! 

specParams 
. 
TypeId 
. 
HasValue &
||' )
p* +
.+ ,
ProductTypeId, 9
==: <

specParams= G
.G H
TypeIdH N
)N O
) 	
{ 	
} 	
} 
} 