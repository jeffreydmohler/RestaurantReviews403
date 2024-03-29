USE [Restaurant]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyName] [varchar](50) NOT NULL,
	[CompanyAddress] [varchar](30) NOT NULL,
	[CompanyCity] [varchar](30) NOT NULL,
	[CompanyState] [varchar](15) NOT NULL,
	[CompanyZipCode] [varchar](9) NOT NULL,
	[CompanyEmail] [varchar](30) NOT NULL,
	[CompanyPhone] [varchar](15) NOT NULL,
	[OwnerFirstName] [varchar](30) NOT NULL,
	[OwnerLastName] [varchar](30) NOT NULL,
	[CompanyDescription] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodType]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodType](
	[RestFoodTypeCode] [varchar](5) NOT NULL,
	[FoodTypeDesc] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RestFoodTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[RestCode] [int] IDENTITY(1,1) NOT NULL,
	[RestName] [varchar](50) NOT NULL,
	[RestOverallRating] [decimal](4, 2) NOT NULL,
	[RestDateFriendly] [bit] NULL,
	[RestCleanliness] [decimal](4, 2) NULL,
	[RestTypeCode] [varchar](5) NOT NULL,
	[RestFoodTypeCode] [varchar](5) NOT NULL,
	[RestAvgMealPrice] [decimal](5, 2) NULL,
	[RestPhone] [varchar](15) NOT NULL,
	[RestAddress] [varchar](30) NOT NULL,
	[RestCity] [varchar](30) NOT NULL,
	[RestState] [varchar](15) NOT NULL,
	[RestZipCode] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RestCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantType]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantType](
	[RestTypeCode] [varchar](5) NOT NULL,
	[RestTypeDesc] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RestTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 12/11/2019 8:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewCode] [int] IDENTITY(1,1) NOT NULL,
	[RestCode] [int] NOT NULL,
	[ReviewOverallRating] [decimal](4, 2) NOT NULL,
	[ReviewDateFriendly] [bit] NULL,
	[ReviewCleanliness] [decimal](4, 2) NULL,
	[ReviewDate] [date] NOT NULL,
	[ReviewDesc] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201912120058318_InitialCreate', N'Project1_403.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE621BD8BB489DA40DBAB9609D2DFA16D012EDA82B515A894A1314FDB23EF493FA0B1D4AD48D175D6CC5768A02452C0E0F87C34372381CEEBF7FFF337EFFE87BC6038E62372013F360B46F1A98D881E392E5C44CE8E2D55BF3FDBBAFBF1A9F39FEA3F16B2E77C4E4A0268927E63DA5E1B165C5F63DF6513CF25D3B0AE260414776E05BC809ACC3FDFD1FAC83030B038409588631FE9810EAFA38FD013FA701B1714813E45D060EF662FE1D4A6629AA71857C1C87C8C613F3260A7EC7363DB8FB7EFF6894899BC689E722506586BD85692042028A28287AFC29C6331A0564390BE103F26E9F420C720BE4C59877E0B814EFDA97FD43D617ABAC9843D9494C03BF27E0C111378E25565FC9C466613C30DF1998993EB15EA7269C98170E4E3F7D0C3C3080D8E0F1D48B98F0C4BC2C9A3889C32B4C4779C55106791E01DC1F41F4795445DC333AD7DB2BC87438DA67FFED19D3C4A349842704273442DE9E7193CC3DD7FE053FDD069F31991C1DCC17476F5FBF41CED19BEFF1D1EB6A4FA1AF2057FB009F802B218E4037BC28FA6F1A56BD9E25562CAA55EA6456012EC1BC308D4BF4F8019325BD871973F8D634CEDD47ECE45F38B93E1117A61154A251023FAF12CF43730F17E556639BECFF0DAD1EBE7E3348AB57E8C15DA6432FB40F13278279F5117B69697CEF86D9F4AA8DF71D173B8F029FFDAEF32B2BBD9B054964B3CE045A915B142D31AD6B37B64AF276A234831A9ED639EAEE539B692AD35B29CA3AB4CA4CC89BD8F46CC8F57DDE763B33EE240C61F0526A318B34114EB15B8D84EA40062EF40A844AF21C74250F814EFD9FD7C2331FB9DE008B618756C01159B8918F8B5EFE1800F510E9ADF30D8A63580B9C9F517CDFA03AFC3980EA336C2711507446911F3E7B6B37F701C157893F67CCDF5C5B830DCDED1FC139B269109D11566B6DBC0F81FD3948E819714E11C59FA89D03B29FB7AEDF1D6010754E6C1BC7F13990193BD300FCEC1CF082D0A3C3DE706C85DAB63332F590EBABBD11612DBDCB454B8F442D2179251A319567D2A4EA8760E9926EAAE6A27A5533895655B9585F551958374DB9A45ED154A055CF4C6A305F2F1DA1E19DBD1476F7BDBDF5366FDD5A5031E30C5648FC1326388265CCB94194E2889423D065DDD886B3900E1F6BF4D9F7A6B4A55F91970CDDD44AB3215D04869F0D29ECEECF86544DF8FCE03ACC2BE97004CA8501BE93BCFA74D53EE704CD363D1D6ADDDC74E39B590374D3E5248E03DB4D678122F8C5431775FDC18733DAE318596FC45808740C88EEB22D0FBE40DF4C9154D7E4147B9862E3C4CE82835314DBC891CD081D727A2896EFA80AC5CA98485DB9EFA43681E9386295103B04C530535D42E569E112DB0D91D76A25A166C72D8CF5BD68432C39C52126ACC1564B74695C1D02610A14ED0883D266A1B155615C3311355EAB6ECCDB5CD872DCA5C8C44638D9E23B6B78C9FDB7672166B3C53640CE66937451401BCEDB0641F959A52B01C483CBAE115438316908CA5DAA8D10B46EB12D10B46E921747D0EC88DA75FC85F3EAAED1B37E50DEFCB6DE68AE2D70B3668F1DA366E67B421D0A357024D3F374CE0AF123551CCE404F7E3E8BB9AB2B528481CF30AD876C4A7F57E9875ACD2022899A004BA2B580F28B4009489A503D94CB63798DDA712FA2076C1E776B84E56BBF005BE1808C5DBD10AD08EAAF4D4572763A7D143D2BD82091BCD361A182A32084B878D53BDEC128BAB8AC6C982EBE701F6FB8D2313E180D066AF15C3546CA3B33B895726AB65B49E590F571C9D6B292E03E69AC947766702B718EB61B49E114F4700BD632517D0B1F68B2E5918E62B729CAC6569628C53F8C2D4D46D5F81285A14B96950C2BFEC59865E955D357B3FE69477E8661D9B122FBA8D0B6688906115A62A1149A064DCFDD28A6A788A23962719EA9E34B62CABD55B3FCE74D56B74F7910F37D2097667F17E133E9FABEB6D9CADE080739872EFACCA549E3E80A02A8AB1B2CE50D79285284EEA78197F844EF61E96B671778D5FAD91719616C09FA4B1E94642EC9CFADDBBED3C8C8B362A8512A3C98D5474A0FA1B377EE7F562DAEF349F5287988AA8AA20B5B6D6DE474AE4CBFD112DDC4FE83D58AF03C338BE7A65401F8A79E1895F40609AC52D61DB59E8152C5AC97744714D24CAA9042510F2DABC9243525AB052BE1692CAA96E8DE829C3E5245974BBB232B1249AAD08AE215B0153A8B65DD5115B9265560457177EC32F1445C457778EFD21E5E56DFBCB203EE7ABB9706E37996C46136BFCA3D7E15A8F2B92716BFA997C0F8F79DA493F694B73A9DB2C0C67A74D260E8D79EDA15787DE969BCB7D763D6EEB56BCB7BD3BDBE1EAF1F699F951AD2294F14295A2F4E7BC2A96ECC4F58ED8F69A4235726621AB919616B7F8A29F6474C6034FBE24D3D17B3853C17B844C45DE09866B91CE6E1FEC1A1F01C67779EC65871EC788A13AAEE7D4C7DCC369096451E5064DFA3484E9258E3F948092AC59F2F88831F27E69F69ADE33494C1FE4A3FEF1917F127E27E49A0E0364AB0F1979CF4394C3A7D87071C85A27FBD889711DD4D7EF1DB5D5675CFB88E603A1D1BFB82A15719FEFA7B895EDA6455D7D066E557142F77B6D51E28285185D9B2FA7B84B94B07798B906BF98D8F1EBFEDAB9AF2BDC15A888A370543E10D6242DD9B8155B0B4EF051CF849D3F702FD3AAB7E3FB08A6ADAB7032EE90F26BE1CE8BE0CE535B7B80F294E4C9B5892523BB7665EAF9586B9EDBD494AD05E6BA2CB49D83DE0064DB45ECF45796109CC836D9D8AFCE4C1B0B7C9FB674F4ADE953CE4D269DF6EFAF126338E1BEE94FE5789C63B901AA748F5D97E3AF1A6B9A60B01EF784E66BFA4E11D231BDFE6B79F1ABC69B2E902C43B4EB65E09C03BC6B56DED9F5B665AE72D74EBE9BC726692E62A4715456E4BD7CD42EE70FC9F074082CCA3CC5E59AAF3C39A725B5B1A2C45F48DEA13D3C486A58923B52B493437DBAFAF7CC36FEC2C97696E5693CED9D4365FFF1BDBE632CD6D6B9224B79168AC4C5354257FB7AC634D19542F29B1B8D693963CF6369FB5F15EFE25E5110F6294DAECD1DC2EBF9CB4E1414C32E4D4E991262C5F14C3DE59F9B71961FF8EDD6509C1FEA54682EDDAAE59C85C9045906FDE8246B98810A1B9C41439B0A59E44D45D209B42310B40A7CFC4D3A01EBB069963E7825C27344C287419FB73AF16F0624E4053FB692E745DE7F175C87EC5437401D47459E0FE9AFC98B89E53E87DAE880969209877C1C3BD6C2C290BFB2E9F0AA4AB807404E2E62B9CA25BEC871E80C5D764861EF02ABA01FD3EE025B29FCA08A00EA47D20EA661F9FBA6819213FE618657DF8091C76FCC777FF01CF4A4C5DA2540000, N'6.3.0')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'User')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'100176012693557966706', N'23d237d2-2fcf-4a82-96e3-e54d6e89681f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'23d237d2-2fcf-4a82-96e3-e54d6e89681f', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c0abe00b-e9f6-4ee8-8589-c8b2e5eced2b', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'23d237d2-2fcf-4a82-96e3-e54d6e89681f', N'jeffreydmohler@gmail.com', 0, NULL, N'd3cb1604-ed60-4551-a5a0-77c6845a3447', NULL, 0, 0, NULL, 1, 0, N'jeffreydmohler@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7e720371-bf9c-4d6c-a633-56e728ec1ae2', N'jdm03@byu.edu', 0, N'AF38RzCXTvQdq0ggGWXx55qhWnuV2SLGrvSRlEePU5FrhQF3oiULZWDUv3XkgUM5GA==', N'4529b4d9-9230-49bd-9be3-9adb3e14b382', NULL, 0, 0, NULL, 1, 0, N'jdm03@byu.edu')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c0abe00b-e9f6-4ee8-8589-c8b2e5eced2b', N'admin@admin.com', 0, N'AIa+Inr9sIqRDVPN4S0T5ol+fiSXbtjSVBBteseuOCPNsdlO9hhKwpZBxiZ5Wc3RCw==', N'e59e0d87-6915-4b8b-a4eb-d44a4fe5243e', NULL, 0, 0, NULL, 1, 0, N'admin@admin.com')
INSERT [dbo].[FoodType] ([RestFoodTypeCode], [FoodTypeDesc]) VALUES (N'AMER', N'American')
INSERT [dbo].[FoodType] ([RestFoodTypeCode], [FoodTypeDesc]) VALUES (N'KOR', N'Korean')
INSERT [dbo].[FoodType] ([RestFoodTypeCode], [FoodTypeDesc]) VALUES (N'MEX', N'Mexican')
SET IDENTITY_INSERT [dbo].[Restaurant] ON 

INSERT [dbo].[Restaurant] ([RestCode], [RestName], [RestOverallRating], [RestDateFriendly], [RestCleanliness], [RestTypeCode], [RestFoodTypeCode], [RestAvgMealPrice], [RestPhone], [RestAddress], [RestCity], [RestState], [RestZipCode]) VALUES (5, N'Wendy''s', CAST(3.70 AS Decimal(4, 2)), 1, CAST(3.76 AS Decimal(4, 2)), N'FAST', N'AMER', CAST(8.00 AS Decimal(5, 2)), N'(801) 377-8063', N'122 E 1230 N St', N'Provo', N'UT', N'84604')
INSERT [dbo].[Restaurant] ([RestCode], [RestName], [RestOverallRating], [RestDateFriendly], [RestCleanliness], [RestTypeCode], [RestFoodTypeCode], [RestAvgMealPrice], [RestPhone], [RestAddress], [RestCity], [RestState], [RestZipCode]) VALUES (6, N'The Corner Restaurant', CAST(3.50 AS Decimal(4, 2)), 1, CAST(2.73 AS Decimal(4, 2)), N'SD', N'AMER', CAST(13.00 AS Decimal(5, 2)), N'(801) 377-8063', N'195 W Main St', N'Provo', N'UT', N'84604')
INSERT [dbo].[Restaurant] ([RestCode], [RestName], [RestOverallRating], [RestDateFriendly], [RestCleanliness], [RestTypeCode], [RestFoodTypeCode], [RestAvgMealPrice], [RestPhone], [RestAddress], [RestCity], [RestState], [RestZipCode]) VALUES (7, N'Koko''s Lunchbox', CAST(3.86 AS Decimal(4, 2)), 1, CAST(3.98 AS Decimal(4, 2)), N'OAC', N'KOR', CAST(11.00 AS Decimal(5, 2)), N'(801) 850-4358', N'3420, 1175 N Canyon Rd', N'Provo', N'UT', N'84604')
INSERT [dbo].[Restaurant] ([RestCode], [RestName], [RestOverallRating], [RestDateFriendly], [RestCleanliness], [RestTypeCode], [RestFoodTypeCode], [RestAvgMealPrice], [RestPhone], [RestAddress], [RestCity], [RestState], [RestZipCode]) VALUES (1002, N'Chick Fil-A', CAST(5.00 AS Decimal(4, 2)), 1, CAST(4.00 AS Decimal(4, 2)), N'FAST', N'AMER', CAST(7.50 AS Decimal(5, 2)), N'8015558912', N'755 E. 500 N.', N'Provo', N'UT', N'88475')
SET IDENTITY_INSERT [dbo].[Restaurant] OFF
INSERT [dbo].[RestaurantType] ([RestTypeCode], [RestTypeDesc]) VALUES (N'FAST', N'Fast Food')
INSERT [dbo].[RestaurantType] ([RestTypeCode], [RestTypeDesc]) VALUES (N'OAC', N'Order at Counter')
INSERT [dbo].[RestaurantType] ([RestTypeCode], [RestTypeDesc]) VALUES (N'SD', N'Sit-Down')
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (1, 5, CAST(3.00 AS Decimal(4, 2)), 0, CAST(4.00 AS Decimal(4, 2)), CAST(N'2019-10-16' AS Date), N'I had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (2, 5, CAST(4.00 AS Decimal(4, 2)), 1, CAST(3.50 AS Decimal(4, 2)), CAST(N'2018-10-18' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (3, 5, CAST(2.50 AS Decimal(4, 2)), 1, CAST(1.30 AS Decimal(4, 2)), CAST(N'2018-10-18' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (4, 6, CAST(3.00 AS Decimal(4, 2)), 0, CAST(2.00 AS Decimal(4, 2)), CAST(N'2019-10-16' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (5, 6, CAST(3.50 AS Decimal(4, 2)), 1, CAST(3.70 AS Decimal(4, 2)), CAST(N'2018-10-18' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (6, 6, CAST(4.00 AS Decimal(4, 2)), 1, CAST(2.50 AS Decimal(4, 2)), CAST(N'2018-10-19' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (7, 7, CAST(4.50 AS Decimal(4, 2)), 0, CAST(3.45 AS Decimal(4, 2)), CAST(N'2019-10-25' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (8, 7, CAST(3.23 AS Decimal(4, 2)), 1, CAST(4.20 AS Decimal(4, 2)), CAST(N'2019-10-26' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (9, 7, CAST(4.00 AS Decimal(4, 2)), 0, CAST(3.00 AS Decimal(4, 2)), CAST(N'2019-10-24' AS Date), N'We had a party of Five hungry adults and one hungry toddler. Three picky eaters too. We happened upon this place. We had intentions of going somewhere else. Decided to try this place and we were beyond thrilled we went. Top notch customer service. They catered to all the picky eaters. It was delicious and such friendly customer service. Loved it!  It''s a new favorite.')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (10, 5, CAST(4.00 AS Decimal(4, 2)), 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2019-12-20' AS Date), N'I love the way they')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (3003, 7, CAST(3.60 AS Decimal(4, 2)), 1, CAST(4.75 AS Decimal(4, 2)), CAST(N'2019-03-02' AS Date), N'An Experience')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (4002, 7, CAST(3.98 AS Decimal(4, 2)), 1, CAST(4.50 AS Decimal(4, 2)), CAST(N'2019-12-08' AS Date), N'Well... let me tell you. It was one EXPERIENCE. I just felt like a changed woman after this experience. I am a new person. NEW PERSON. Food - meh')
INSERT [dbo].[Review] ([ReviewCode], [RestCode], [ReviewOverallRating], [ReviewDateFriendly], [ReviewCleanliness], [ReviewDate], [ReviewDesc]) VALUES (8002, 5, CAST(5.00 AS Decimal(4, 2)), 1, CAST(5.00 AS Decimal(4, 2)), CAST(N'2019-12-20' AS Date), N'jlkj;kljlk')
SET IDENTITY_INSERT [dbo].[Review] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD FOREIGN KEY([RestFoodTypeCode])
REFERENCES [dbo].[FoodType] ([RestFoodTypeCode])
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD FOREIGN KEY([RestTypeCode])
REFERENCES [dbo].[RestaurantType] ([RestTypeCode])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([RestCode])
REFERENCES [dbo].[Restaurant] ([RestCode])
GO
