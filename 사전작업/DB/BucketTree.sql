USE [master]
GO
/****** Object:  Database [BucketTree]    Script Date: 2016-08-18 오전 10:03:10 ******/
CREATE DATABASE [BucketTree]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BucketTree', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BucketTree.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BucketTree_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BucketTree_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BucketTree] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BucketTree].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BucketTree] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BucketTree] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BucketTree] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BucketTree] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BucketTree] SET ARITHABORT OFF 
GO
ALTER DATABASE [BucketTree] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BucketTree] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BucketTree] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BucketTree] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BucketTree] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BucketTree] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BucketTree] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BucketTree] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BucketTree] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BucketTree] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BucketTree] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BucketTree] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BucketTree] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BucketTree] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BucketTree] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BucketTree] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BucketTree] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BucketTree] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BucketTree] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BucketTree] SET  MULTI_USER 
GO
ALTER DATABASE [BucketTree] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BucketTree] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BucketTree] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BucketTree] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BucketTree]
GO
/****** Object:  Table [dbo].[BucketList]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BucketList](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[image] [binary](8000) NULL,
	[count] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[user_idx] [int] NOT NULL,
	[writer] [int] NOT NULL,
	[x] [int] NULL,
	[y] [int] NULL,
	[keyword] [nvarchar](max) NULL,
	[when] [int] NOT NULL,
	[who] [int] NOT NULL,
	[what] [int] NOT NULL,
	[tree_idx] [int] NULL,
 CONSTRAINT [PK_BucketList] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BucketList_Comment]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketList_Comment](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[bucketList_idx] [int] NOT NULL,
	[user_Idx] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[contents] [nvarchar](150) NOT NULL,
	[author] [int] NOT NULL,
 CONSTRAINT [PK_BucketList_Comment] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketList_Journal]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketList_Journal](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[bucket_idx] [int] NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_BucketList_Journal] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketShare_Answer]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketShare_Answer](
	[BucketShare_Question_idx] [int] NOT NULL,
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[user_idx] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[state] [int] NOT NULL,
 CONSTRAINT [PK_BucketShare_Answer] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketShare_Question]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketShare_Question](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[user_idx] [int] NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[bucketList_idx] [int] NULL,
	[point] [int] NOT NULL,
	[state] [int] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_BucketShare_Question] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketTree]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BucketTree](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[treeName] [nvarchar](200) NOT NULL,
	[bucketList_idx] [int] NOT NULL,
	[user_idx] [int] NOT NULL,
	[type] [int] NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[image] [binary](800) NULL,
	[author] [int] NOT NULL,
	[member_num] [int] NOT NULL,
 CONSTRAINT [PK_BucketTree] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BucketTree_Member]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketTree_Member](
	[bucketTree_idx] [int] NOT NULL,
	[user_idx] [int] NOT NULL,
	[state] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketTree_Message]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketTree_Message](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[BucketTree_idx] [int] NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[user_idx] [int] NOT NULL,
	[type] [int] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_BucketTree_Message] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketTree_Message_Comment]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketTree_Message_Comment](
	[BucketTree_Message_idx] [int] NOT NULL,
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[user_idx] [int] NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_BucketTree_Message_Comment] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category_When]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_When](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[when] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category_When] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category_Who]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Who](
	[who] [nvarchar](50) NOT NULL,
	[idx] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Category_Who] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cateogry_What]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cateogry_What](
	[what] [nchar](50) NOT NULL,
	[idx] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Cateogry_What] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Friend]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friend](
	[fromUser] [int] NOT NULL,
	[toUser] [int] NOT NULL,
	[state] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messenger]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messenger](
	[to_user_idx] [int] NOT NULL,
	[from_user_idx] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[type] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notice]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[contents] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
	[user_Idx] [int] NOT NULL,
 CONSTRAINT [PK_Notice] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Point]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point](
	[user_idx] [int] NOT NULL,
	[state] [int] NOT NULL,
	[point] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[contents] [nvarchar](200) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeLine]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeLine](
	[user_idx] [int] NOT NULL,
	[message] [nvarchar](200) NOT NULL,
	[date] [datetime] NOT NULL,
	[url] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2016-08-18 오전 10:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[birth] [date] NOT NULL,
	[image] [binary](8000) NULL,
	[type] [int] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[idx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category_When] ON 

INSERT [dbo].[Category_When] ([idx], [when]) VALUES (1, N'없음')
INSERT [dbo].[Category_When] ([idx], [when]) VALUES (2, N'10대')
INSERT [dbo].[Category_When] ([idx], [when]) VALUES (3, N'20대')
INSERT [dbo].[Category_When] ([idx], [when]) VALUES (4, N'30대')
INSERT [dbo].[Category_When] ([idx], [when]) VALUES (5, N'40대')
INSERT [dbo].[Category_When] ([idx], [when]) VALUES (6, N'50대이상')
SET IDENTITY_INSERT [dbo].[Category_When] OFF
SET IDENTITY_INSERT [dbo].[Category_Who] ON 

INSERT [dbo].[Category_Who] ([who], [idx]) VALUES (N'없음', 1)
INSERT [dbo].[Category_Who] ([who], [idx]) VALUES (N'혼자', 2)
INSERT [dbo].[Category_Who] ([who], [idx]) VALUES (N'가족', 3)
INSERT [dbo].[Category_Who] ([who], [idx]) VALUES (N'친구', 4)
INSERT [dbo].[Category_Who] ([who], [idx]) VALUES (N'직장', 5)
SET IDENTITY_INSERT [dbo].[Category_Who] OFF
SET IDENTITY_INSERT [dbo].[Cateogry_What] ON 

INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'없음                                                ', 1)
INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'여행                                                ', 2)
INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'자기계발                                              ', 3)
INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'재미                                                ', 4)
INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'취미                                                ', 5)
INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'건강                                                ', 6)
INSERT [dbo].[Cateogry_What] ([what], [idx]) VALUES (N'음식                                                ', 7)
SET IDENTITY_INSERT [dbo].[Cateogry_What] OFF
ALTER TABLE [dbo].[BucketList]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_Category_When] FOREIGN KEY([when])
REFERENCES [dbo].[Category_When] ([idx])
GO
ALTER TABLE [dbo].[BucketList] CHECK CONSTRAINT [FK_BucketList_Category_When]
GO
ALTER TABLE [dbo].[BucketList]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_Category_Who] FOREIGN KEY([who])
REFERENCES [dbo].[Category_Who] ([idx])
GO
ALTER TABLE [dbo].[BucketList] CHECK CONSTRAINT [FK_BucketList_Category_Who]
GO
ALTER TABLE [dbo].[BucketList]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_Cateogry_What] FOREIGN KEY([what])
REFERENCES [dbo].[Cateogry_What] ([idx])
GO
ALTER TABLE [dbo].[BucketList] CHECK CONSTRAINT [FK_BucketList_Cateogry_What]
GO
ALTER TABLE [dbo].[BucketList]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketList] CHECK CONSTRAINT [FK_BucketList_User]
GO
ALTER TABLE [dbo].[BucketList_Comment]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_Comment_BucketList] FOREIGN KEY([bucketList_idx])
REFERENCES [dbo].[BucketList] ([idx])
GO
ALTER TABLE [dbo].[BucketList_Comment] CHECK CONSTRAINT [FK_BucketList_Comment_BucketList]
GO
ALTER TABLE [dbo].[BucketList_Comment]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_Comment_User] FOREIGN KEY([user_Idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketList_Comment] CHECK CONSTRAINT [FK_BucketList_Comment_User]
GO
ALTER TABLE [dbo].[BucketList_Journal]  WITH CHECK ADD  CONSTRAINT [FK_BucketList_Journal_BucketList] FOREIGN KEY([bucket_idx])
REFERENCES [dbo].[BucketList] ([idx])
GO
ALTER TABLE [dbo].[BucketList_Journal] CHECK CONSTRAINT [FK_BucketList_Journal_BucketList]
GO
ALTER TABLE [dbo].[BucketShare_Answer]  WITH CHECK ADD  CONSTRAINT [FK_BucketShare_Answer_BucketShare_Question] FOREIGN KEY([BucketShare_Question_idx])
REFERENCES [dbo].[BucketShare_Question] ([idx])
GO
ALTER TABLE [dbo].[BucketShare_Answer] CHECK CONSTRAINT [FK_BucketShare_Answer_BucketShare_Question]
GO
ALTER TABLE [dbo].[BucketShare_Answer]  WITH CHECK ADD  CONSTRAINT [FK_BucketShare_Answer_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketShare_Answer] CHECK CONSTRAINT [FK_BucketShare_Answer_User]
GO
ALTER TABLE [dbo].[BucketShare_Question]  WITH CHECK ADD  CONSTRAINT [FK_BucketShare_Question_BucketList] FOREIGN KEY([bucketList_idx])
REFERENCES [dbo].[BucketList] ([idx])
GO
ALTER TABLE [dbo].[BucketShare_Question] CHECK CONSTRAINT [FK_BucketShare_Question_BucketList]
GO
ALTER TABLE [dbo].[BucketShare_Question]  WITH CHECK ADD  CONSTRAINT [FK_BucketShare_Question_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketShare_Question] CHECK CONSTRAINT [FK_BucketShare_Question_User]
GO
ALTER TABLE [dbo].[BucketTree]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_BucketList] FOREIGN KEY([bucketList_idx])
REFERENCES [dbo].[BucketList] ([idx])
GO
ALTER TABLE [dbo].[BucketTree] CHECK CONSTRAINT [FK_BucketTree_BucketList]
GO
ALTER TABLE [dbo].[BucketTree]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketTree] CHECK CONSTRAINT [FK_BucketTree_User]
GO
ALTER TABLE [dbo].[BucketTree_Member]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_Member_BucketTree] FOREIGN KEY([bucketTree_idx])
REFERENCES [dbo].[BucketTree] ([idx])
GO
ALTER TABLE [dbo].[BucketTree_Member] CHECK CONSTRAINT [FK_BucketTree_Member_BucketTree]
GO
ALTER TABLE [dbo].[BucketTree_Member]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_Member_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketTree_Member] CHECK CONSTRAINT [FK_BucketTree_Member_User]
GO
ALTER TABLE [dbo].[BucketTree_Message]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_Message_BucketTree] FOREIGN KEY([BucketTree_idx])
REFERENCES [dbo].[BucketTree] ([idx])
GO
ALTER TABLE [dbo].[BucketTree_Message] CHECK CONSTRAINT [FK_BucketTree_Message_BucketTree]
GO
ALTER TABLE [dbo].[BucketTree_Message]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_Message_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketTree_Message] CHECK CONSTRAINT [FK_BucketTree_Message_User]
GO
ALTER TABLE [dbo].[BucketTree_Message_Comment]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_Message_Comment_BucketTree_Message] FOREIGN KEY([BucketTree_Message_idx])
REFERENCES [dbo].[BucketTree_Message] ([idx])
GO
ALTER TABLE [dbo].[BucketTree_Message_Comment] CHECK CONSTRAINT [FK_BucketTree_Message_Comment_BucketTree_Message]
GO
ALTER TABLE [dbo].[BucketTree_Message_Comment]  WITH CHECK ADD  CONSTRAINT [FK_BucketTree_Message_Comment_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[BucketTree_Message_Comment] CHECK CONSTRAINT [FK_BucketTree_Message_Comment_User]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_User] FOREIGN KEY([fromUser])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_User]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_User1] FOREIGN KEY([toUser])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_User1]
GO
ALTER TABLE [dbo].[Messenger]  WITH CHECK ADD  CONSTRAINT [FK_Messenger_User] FOREIGN KEY([to_user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[Messenger] CHECK CONSTRAINT [FK_Messenger_User]
GO
ALTER TABLE [dbo].[Messenger]  WITH CHECK ADD  CONSTRAINT [FK_Messenger_User1] FOREIGN KEY([from_user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[Messenger] CHECK CONSTRAINT [FK_Messenger_User1]
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD  CONSTRAINT [FK_Notice_User] FOREIGN KEY([user_Idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[Notice] CHECK CONSTRAINT [FK_Notice_User]
GO
ALTER TABLE [dbo].[Point]  WITH CHECK ADD  CONSTRAINT [FK_Point_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[Point] CHECK CONSTRAINT [FK_Point_User]
GO
ALTER TABLE [dbo].[TimeLine]  WITH CHECK ADD  CONSTRAINT [FK_TimeLine_User] FOREIGN KEY([user_idx])
REFERENCES [dbo].[User] ([idx])
GO
ALTER TABLE [dbo].[TimeLine] CHECK CONSTRAINT [FK_TimeLine_User]
GO
USE [master]
GO
ALTER DATABASE [BucketTree] SET  READ_WRITE 
GO
