USE [master]
GO
/****** Object:  Database [CountryCityManagementSystemDB]    Script Date: 10/22/2016 9:36:46 AM ******/
CREATE DATABASE [CountryCityManagementSystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CountryCityManagementSystemDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CountryCityManagementSystemDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CountryCityManagementSystemDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CountryCityManagementSystemDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CountryCityManagementSystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CountryCityManagementSystemDB]
GO
/****** Object:  Table [dbo].[City]    Script Date: 10/22/2016 9:36:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[cityName] [varchar](250) NOT NULL,
	[about] [text] NOT NULL,
	[noOfDwellers] [int] NOT NULL,
	[location] [varchar](250) NOT NULL,
	[weather] [text] NOT NULL,
	[countryName] [varchar](250) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[cityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/22/2016 9:36:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[countryName] [varchar](250) NOT NULL,
	[about] [text] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[countryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[City] ([cityName], [about], [noOfDwellers], [location], [weather], [countryName]) VALUES (N'Dhaka', N'The old city of Dhaka was the Mughal capital of Bengal.[8] The city''s name was Jahangir Nagar (City of Jahangir) in the 17th century. It was a cosmopolitan commercial centre and the hub of the worldwide muslin and silk trade. The city hosted two important caravansaries of the subcontinent: the Bara Katra and Choto Katra, located on the riverfront of the Buriganga. The Mughals decorated the city with well-laid out gardens, tombs, mosques, palaces and forts. Dhaka became known as the City of Mosques in Bengal.[8] It was also described as the Venice of the East.[9] The old city was home to various Eurasian merchant groups. At the height of its medieval glory, Dhaka was regarded as one of the wealthiest and most prosperous cities in the world.[10] It was central to the economy of Mughal Bengal, which generated 50% of Mughal GDP.[', 6000, N'Dhaka Division', N'Hot weather', N'Bangladesh')
INSERT [dbo].[City] ([cityName], [about], [noOfDwellers], [location], [weather], [countryName]) VALUES (N'Dinajpur', N'Dinajpur was once a part of the ancient state of Pundravardhana. Devkot which rotated as capital of Lakhnauti was located 11 miles south of Dinajpur town. The British administrative control in Dinajpur was established in 1786.[1] At the time of Partition of Bengal in 1947, part of greater Dinajpur district was included in West Bengal and it was named West Dinajpur district. People of the district took part in the Tebhaga Movement and also had significant contribution in the War of Liberation of 1971', 3000, N'Dhaka Dinajpur Highway', N'Cool weather', N'Bangladesh')
INSERT [dbo].[City] ([cityName], [about], [noOfDwellers], [location], [weather], [countryName]) VALUES (N'Mumbai', N'The seven islands that came to constitute Mumbai were home to communities of fishing colonies.[4] For centuries, the islands were under the control of successive indigenous empires before being ceded to the Portuguese and subsequently to the British East India Company when in 1661 King Charles II married the Portuguese Catherine of Braganza, and as part of her dowry Charles received the ports of Tangier and seven islands of Bombay.[17] During the mid-18th century, Bombay was reshaped by the Hornby Vellard project,[18] which undertook reclamation of the area between the seven islands from the sea.[19] Along with construction of major roads and railways, the reclamation project, completed in 1845', 10000, N'India Main Highway', N'Mixed Weather', N'India')
INSERT [dbo].[City] ([cityName], [about], [noOfDwellers], [location], [weather], [countryName]) VALUES (N'Rangpur', N'<p>Is a Nice City.</p>', 300, N'Rangpur Sadar', N'cool', N'Bangladesh')
INSERT [dbo].[Country] ([countryName], [about]) VALUES (N'', N'')
INSERT [dbo].[Country] ([countryName], [about]) VALUES (N'Bangladesh', N'The name Bangladesh was originally written as two words, Bangla Desh. Starting in the 1950s, Bengali nationalists used the term in political rallies in East Pakistan. The term Bangla is a major name for both the Bengal region and the Bengali language. The earliest references to the term date to the Nesari plate in 805 AD. The term "Vangaladesa" is found in South Indian records in the 11th century.')
INSERT [dbo].[Country] ([countryName], [about]) VALUES (N'India', N'India, officially the Republic of India,[c] is a country in South Asia. It is the seventh-largest country by area, the second-most populous country (with over 1.2 billion people), and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the south-west, and the Bay of Bengal on the south-east, it shares land borders with Pakistan to the west;[d] China, Nepal, and Bhutan to the north-east; and Myanmar (Burma) and Bangladesh to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; in addition, India''s Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia. India''s capital is New Delhi; other metropolises include Mumbai, Bangalore, Chennai, Hyderabad, Ahmedabad and Kolkata.')
INSERT [dbo].[Country] ([countryName], [about]) VALUES (N'Japan', N'<p>Japan is a Nice<strong> Country</strong>.</p>')
INSERT [dbo].[Country] ([countryName], [about]) VALUES (N'Nepal', N'Nepal is bordered by China to the north and India to the south, east, and west. It is separated from Bangladesh by a narrow Indian corridor and from Bhutan by the Indian state of Sikkim. Nepal is located in the Himalayas and is home to eight of the world''s ten tallest mountains, including Mount Everest, the highest point on Earth. Its southern Madhesh region is fertile and humid.[11] The country has an area of 147,181 square kilometres (56,827 sq mi), making it the world''s 93rd largest country by area.[12] It is also the 41st most populous country.')
INSERT [dbo].[Country] ([countryName], [about]) VALUES (N'sri lanka', N'A diverse and multicultural country, Sri Lanka is home to many religions, ethnic groups, and languages.[12] In addition to the majority Sinhalese, it is home to large groups of Sri Lankan and Indian Tamils, Moors, Burghers, Malays, Kaffirs and the aboriginal Vedda.[13] Sri Lanka has a rich Buddhist heritage, and the first known Buddhist writings of Sri Lanka, the Pali Canon, dates back to the Fourth Buddhist council in 29 BC.')
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_countryName] FOREIGN KEY([countryName])
REFERENCES [dbo].[Country] ([countryName])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_countryName]
GO
USE [master]
GO
ALTER DATABASE [CountryCityManagementSystemDB] SET  READ_WRITE 
GO
