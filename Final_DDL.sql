
CREATE TABLE [dbo].[Dim_Date](
	[Date_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Date] [int] NULL,
	[SOR_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Date_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Hospital]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Hospital](
	[Hospital_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Facility_Id/CCN] [varchar](200) NULL,
	[Name] [varchar](200) NULL,
	[Type] [varchar](200) NULL,
	[Ownership] [varchar](200) NULL,
	[Phone_number] [varchar](200) NULL,
	[SOR_Date] [datetime] NULL,
 CONSTRAINT [PK4] PRIMARY KEY NONCLUSTERED 
(
	[Hospital_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Lookup_Zip_City_State]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Lookup_Zip_City_State](
	[Lookup_Id_Sk] [int] NOT NULL,
	[Zipcode] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[County] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[CLASSFP] [varchar](200) NULL,
	[STCOUNTYFP] [varchar](200) NULL,
	[SOR_Date] [datetime] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Lookup_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Organization]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Organization](
	[Organization_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Phone_number] [varchar](200) NULL,
 CONSTRAINT [PK10] PRIMARY KEY NONCLUSTERED 
(
	[Organization_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Physician]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Physician](
	[Physician_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Lookup_Id_Sk] [int] NULL,
	[NPI] [int] NULL,
	[Last_name] [varchar](200) NULL,
	[First_name] [varchar](200) NULL,
	[Middle_name] [varchar](200) NULL,
	[Suffix] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[Credentials] [varchar](200) NULL,
	[School_name] [varchar](200) NULL,
	[CCN1] [varchar](200) NULL,
	[Graduation_year] [int] NULL,
	[Primary_speciality] [varchar](200) NULL,
	[All_secondary_speciality] [varchar](200) NULL,
	[Start] [date] NULL,
	[End] [date] NULL,
	[Update] [date] NULL,
	[Prior_CCN] [varchar](200) NULL,
	[Hospital_Id_Sk1] [int] NULL,
	[Hospital_Id_Sk2] [int] NULL,
	[Hospital_Id_Sk3] [int] NULL,
	[Hospital_Id_Sk4] [int] NULL,
 CONSTRAINT [PK8] PRIMARY KEY NONCLUSTERED 
(
	[Physician_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Services]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Services](
	[Services_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Emergency_services] [varchar](200) NULL,
	[Interoperabity_EHR] [varchar](200) NULL,
	[SOR_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Services_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Error_Dim_Hospital]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error_Dim_Hospital](
	[Error_Dim_Hospital_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Facility_Id/CCN] [varchar](200) NULL,
	[Name] [varchar](200) NULL,
	[Type] [varchar](200) NULL,
	[Ownership] [varchar](200) NULL,
	[Phone_number] [varchar](200) NULL,
	[Date] [datetime] NULL,
	[ErrorType] [varchar](50) NULL,
 CONSTRAINT [PK7] PRIMARY KEY NONCLUSTERED 
(
	[Error_Dim_Hospital_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Population]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Population](
	[Fact_Population_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Population] [bigint] NULL,
	[Birth_2019] [bigint] NULL,
	[Deaths_2019] [bigint] NULL,
	[Lookup_Id_Sk] [int] NULL,
	[SOR_Date] [date] NULL,
 CONSTRAINT [PK7_2] PRIMARY KEY NONCLUSTERED 
(
	[Fact_Population_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCovid]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCovid](
	[Covid_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Cum_Confirmed_cases] [int] NULL,
	[Cum_Deaths] [int] NULL,
	[Total_population] [int] NULL,
	[Lookup_Id_Sk] [int] NULL,
	[Date_Id_Sk] [int] NULL,
	[SOR_Date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHospitalRating]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHospitalRating](
	[Hospital_rating_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Overall_rating] [varchar](200) NULL,
	[Mortality] [varchar](200) NULL,
	[Safety_of_care] [varchar](200) NULL,
	[Readmission] [varchar](200) NULL,
	[Patient_experience] [varchar](200) NULL,
	[Effectives_of_care] [varchar](200) NULL,
	[Timeliness_of_care] [varchar](200) NULL,
	[Use_of_medical_imaging] [varchar](200) NULL,
	[Hospital_Id_Sk] [int] NULL,
	[Services_Id_Sk] [int] NULL,
	[Stg_Hospital_Sk] [int] NULL,
	[Lookup_Id_Sk] [int] NULL,
	[SOR_Date] [datetime] NULL,
 CONSTRAINT [PK6] PRIMARY KEY NONCLUSTERED 
(
	[Hospital_rating_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lk_Hospital_Ownership]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lk_Hospital_Ownership](
	[lk_Hospital_Ownership_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Ownership] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lk_Hospital_Type]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lk_Hospital_Type](
	[lk_Hospital_Type_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reject_Covid]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reject_Covid](
	[uid] [varchar](50) NULL,
	[location_type] [varchar](50) NULL,
	[fips_code] [varchar](50) NULL,
	[location_name] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[total_population] [varchar](50) NULL,
	[cumulative_cases] [varchar](50) NULL,
	[cumulative_cases_per_100_000] [varchar](50) NULL,
	[cumulative_deaths] [varchar](50) NULL,
	[cumulative_deaths_per_100_000] [varchar](50) NULL,
	[new_cases] [varchar](50) NULL,
	[new_deaths] [varchar](50) NULL,
	[new_cases_per_100_000] [varchar](50) NULL,
	[new_deaths_per_100_000] [varchar](50) NULL,
	[new_cases_7_day_rolling_avg] [varchar](50) NULL,
	[new_deaths_7_day_rolling_avg] [varchar](50) NULL,
	[SOR_Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reject_Hospital]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reject_Hospital](
	[Facility ID] [varchar](50) NULL,
	[Facility Name] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[ZIP Code] [varchar](50) NULL,
	[County Name] [varchar](200) NULL,
	[Phone Number] [varchar](200) NULL,
	[Hospital Type] [varchar](50) NULL,
	[Hospital Ownership] [varchar](50) NULL,
	[Emergency Services] [varchar](50) NULL,
	[Meets criteria for promoting interoperability of EHRs] [varchar](50) NULL,
	[Hospital overall rating] [varchar](50) NULL,
	[Hospital overall rating footnote] [varchar](50) NULL,
	[Mortality national comparison] [varchar](50) NULL,
	[Mortality national comparison footnote] [varchar](50) NULL,
	[Safety of care national comparison] [varchar](50) NULL,
	[Safety of care national comparison footnote] [varchar](50) NULL,
	[Readmission national comparison] [varchar](50) NULL,
	[Readmission national comparison footnote] [varchar](50) NULL,
	[Patient experience national comparison] [varchar](50) NULL,
	[Patient experience national comparison footnote] [varchar](50) NULL,
	[Effectiveness of care national comparison] [varchar](50) NULL,
	[Effectiveness of care national comparison footnote] [varchar](50) NULL,
	[Timeliness of care national comparison] [varchar](50) NULL,
	[Timeliness of care national comparison footnote] [varchar](50) NULL,
	[Efficient use of medical imaging national comparison] [varchar](50) NULL,
	[Efficient use of medical imaging national comparison footnote] [varchar](50) NULL,
	[Location] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reject_Population]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reject_Population](
	[FIPStxt] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Area_Name] [varchar](50) NULL,
	[Rural-urban_Continuum Code_2003] [varchar](50) NULL,
	[Rural-urban_Continuum Code_2013] [varchar](50) NULL,
	[Urban_Influence_Code_2003] [varchar](50) NULL,
	[Urban_Influence_Code_2013] [varchar](50) NULL,
	[Economic_typology_2015] [varchar](50) NULL,
	[CENSUS_2010_POP] [varchar](50) NULL,
	[ESTIMATES_BASE_2010] [varchar](50) NULL,
	[POP_ESTIMATE_2010] [varchar](50) NULL,
	[POP_ESTIMATE_2011] [varchar](50) NULL,
	[POP_ESTIMATE_2012] [varchar](50) NULL,
	[POP_ESTIMATE_2013] [varchar](50) NULL,
	[POP_ESTIMATE_2014] [varchar](50) NULL,
	[POP_ESTIMATE_2015] [varchar](50) NULL,
	[POP_ESTIMATE_2016] [varchar](50) NULL,
	[POP_ESTIMATE_2017] [varchar](50) NULL,
	[POP_ESTIMATE_2018] [varchar](50) NULL,
	[POP_ESTIMATE_2019] [varchar](50) NULL,
	[N_POP_CHG_2010] [varchar](50) NULL,
	[N_POP_CHG_2011] [varchar](50) NULL,
	[N_POP_CHG_2012] [varchar](50) NULL,
	[N_POP_CHG_2013] [varchar](50) NULL,
	[N_POP_CHG_2014] [varchar](50) NULL,
	[N_POP_CHG_2015] [varchar](50) NULL,
	[N_POP_CHG_2016] [varchar](50) NULL,
	[N_POP_CHG_2017] [varchar](50) NULL,
	[N_POP_CHG_2018] [varchar](50) NULL,
	[N_POP_CHG_2019] [varchar](50) NULL,
	[Births_2010] [varchar](50) NULL,
	[Births_2011] [varchar](50) NULL,
	[Births_2012] [varchar](50) NULL,
	[Births_2013] [varchar](50) NULL,
	[Births_2014] [varchar](50) NULL,
	[Births_2015] [varchar](50) NULL,
	[Births_2016] [varchar](50) NULL,
	[Births_2017] [varchar](50) NULL,
	[Births_2018] [varchar](50) NULL,
	[Births_2019] [varchar](50) NULL,
	[Deaths_2010] [varchar](50) NULL,
	[Deaths_2011] [varchar](50) NULL,
	[Deaths_2012] [varchar](50) NULL,
	[Deaths_2013] [varchar](50) NULL,
	[Deaths_2014] [varchar](50) NULL,
	[Deaths_2015] [varchar](50) NULL,
	[Deaths_2016] [varchar](50) NULL,
	[Deaths_2017] [varchar](50) NULL,
	[Deaths_2018] [varchar](50) NULL,
	[Deaths_2019] [varchar](50) NULL,
	[NATURAL_INC_2010] [varchar](50) NULL,
	[NATURAL_INC_2011] [varchar](50) NULL,
	[NATURAL_INC_2012] [varchar](50) NULL,
	[NATURAL_INC_2013] [varchar](50) NULL,
	[NATURAL_INC_2014] [varchar](50) NULL,
	[NATURAL_INC_2015] [varchar](50) NULL,
	[NATURAL_INC_2016] [varchar](50) NULL,
	[NATURAL_INC_2017] [varchar](50) NULL,
	[NATURAL_INC_2018] [varchar](50) NULL,
	[NATURAL_INC_2019] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2010] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2011] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2012] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2013] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2014] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2015] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2016] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2017] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2018] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2019] [varchar](50) NULL,
	[DOMESTIC_MIG_2010] [varchar](50) NULL,
	[DOMESTIC_MIG_2011] [varchar](50) NULL,
	[DOMESTIC_MIG_2012] [varchar](50) NULL,
	[DOMESTIC_MIG_2013] [varchar](50) NULL,
	[DOMESTIC_MIG_2014] [varchar](50) NULL,
	[DOMESTIC_MIG_2015] [varchar](50) NULL,
	[DOMESTIC_MIG_2016] [varchar](50) NULL,
	[DOMESTIC_MIG_2017] [varchar](50) NULL,
	[DOMESTIC_MIG_2018] [varchar](50) NULL,
	[DOMESTIC_MIG_2019] [varchar](50) NULL,
	[NET_MIG_2010] [varchar](50) NULL,
	[NET_MIG_2011] [varchar](50) NULL,
	[NET_MIG_2012] [varchar](50) NULL,
	[NET_MIG_2013] [varchar](50) NULL,
	[NET_MIG_2014] [varchar](50) NULL,
	[NET_MIG_2015] [varchar](50) NULL,
	[NET_MIG_2016] [varchar](50) NULL,
	[NET_MIG_2017] [varchar](50) NULL,
	[NET_MIG_2018] [varchar](50) NULL,
	[NET_MIG_2019] [varchar](50) NULL,
	[RESIDUAL_2010] [varchar](50) NULL,
	[RESIDUAL_2011] [varchar](50) NULL,
	[RESIDUAL_2012] [varchar](50) NULL,
	[RESIDUAL_2013] [varchar](50) NULL,
	[RESIDUAL_2014] [varchar](50) NULL,
	[RESIDUAL_2015] [varchar](50) NULL,
	[RESIDUAL_2016] [varchar](50) NULL,
	[RESIDUAL_2017] [varchar](50) NULL,
	[RESIDUAL_2018] [varchar](50) NULL,
	[RESIDUAL_2019] [varchar](50) NULL,
	[GQ_ESTIMATES_BASE_2010] [varchar](50) NULL,
	[GQ_ESTIMATES_2010] [varchar](50) NULL,
	[GQ_ESTIMATES_2011] [varchar](50) NULL,
	[GQ_ESTIMATES_2012] [varchar](50) NULL,
	[GQ_ESTIMATES_2013] [varchar](50) NULL,
	[GQ_ESTIMATES_2014] [varchar](50) NULL,
	[GQ_ESTIMATES_2015] [varchar](50) NULL,
	[GQ_ESTIMATES_2016] [varchar](50) NULL,
	[GQ_ESTIMATES_2017] [varchar](50) NULL,
	[GQ_ESTIMATES_2018] [varchar](50) NULL,
	[GQ_ESTIMATES_2019] [varchar](50) NULL,
	[R_birth_2011] [varchar](50) NULL,
	[R_birth_2012] [varchar](50) NULL,
	[R_birth_2013] [varchar](50) NULL,
	[R_birth_2014] [varchar](50) NULL,
	[R_birth_2015] [varchar](50) NULL,
	[R_birth_2016] [varchar](50) NULL,
	[R_birth_2017] [varchar](50) NULL,
	[R_birth_2018] [varchar](50) NULL,
	[R_birth_2019] [varchar](50) NULL,
	[R_death_2011] [varchar](50) NULL,
	[R_death_2012] [varchar](50) NULL,
	[R_death_2013] [varchar](50) NULL,
	[R_death_2014] [varchar](50) NULL,
	[R_death_2015] [varchar](50) NULL,
	[R_death_2016] [varchar](50) NULL,
	[R_death_2017] [varchar](50) NULL,
	[R_death_2018] [varchar](50) NULL,
	[R_death_2019] [varchar](50) NULL,
	[R_NATURAL_INC_2011] [varchar](50) NULL,
	[R_NATURAL_INC_2012] [varchar](50) NULL,
	[R_NATURAL_INC_2013] [varchar](50) NULL,
	[R_NATURAL_INC_2014] [varchar](50) NULL,
	[R_NATURAL_INC_2015] [varchar](50) NULL,
	[R_NATURAL_INC_2016] [varchar](50) NULL,
	[R_NATURAL_INC_2017] [varchar](50) NULL,
	[R_NATURAL_INC_2018] [varchar](50) NULL,
	[R_NATURAL_INC_2019] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2011] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2012] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2013] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2014] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2015] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2016] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2017] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2018] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2019] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2011] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2012] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2013] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2014] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2015] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2016] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2017] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2018] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2019] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Covid]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Covid](
	[Stg_Covid_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[uid] [varchar](50) NULL,
	[location_type] [varchar](50) NULL,
	[fips_code] [varchar](50) NULL,
	[location_name] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[total_population] [varchar](50) NULL,
	[cumulative_cases] [varchar](50) NULL,
	[cumulative_cases_per_100_000] [varchar](50) NULL,
	[cumulative_deaths] [varchar](50) NULL,
	[cumulative_deaths_per_100_000] [varchar](50) NULL,
	[new_cases] [varchar](50) NULL,
	[new_deaths] [varchar](50) NULL,
	[new_cases_per_100_000] [varchar](50) NULL,
	[new_deaths_per_100_000] [varchar](50) NULL,
	[new_cases_7_day_rolling_avg] [varchar](50) NULL,
	[new_deaths_7_day_rolling_avg] [varchar](50) NULL,
	[Lookup_Id_Sk] [int] NULL,
	[Date_Id_Sk] [int] NULL,
	[SOR_Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Stg_Covid_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Hospital]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Hospital](
	[Stg_Hospital_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id_Sk] [int] NULL,
	[Lookup_Id_Sk] [int] NULL,
	[Services_Id_Sk] [int] NULL,
	[Facility ID] [varchar](200) NULL,
	[Facility Name] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[ZIP Code] [varchar](200) NULL,
	[County Name] [varchar](200) NULL,
	[Phone Number] [varchar](200) NULL,
	[Hospital Type] [varchar](200) NULL,
	[Hospital Ownership] [varchar](200) NULL,
	[Emergency Services] [varchar](200) NULL,
	[Meets criteria for promoting interoperability of EHRs] [varchar](200) NULL,
	[Hospital overall rating] [varchar](200) NULL,
	[Hospital overall rating footnote] [varchar](200) NULL,
	[Mortality national comparison] [varchar](200) NULL,
	[Mortality national comparison footnote] [varchar](200) NULL,
	[Safety of care national comparison] [varchar](200) NULL,
	[Safety of care national comparison footnote] [varchar](200) NULL,
	[Readmission national comparison] [varchar](200) NULL,
	[Readmission national comparison footnote] [varchar](200) NULL,
	[Patient experience national comparison] [varchar](200) NULL,
	[Patient experience national comparison footnote] [varchar](200) NULL,
	[Effectiveness of care national comparison] [varchar](200) NULL,
	[Effectiveness of care national comparison footnote] [varchar](200) NULL,
	[Timeliness of care national comparison] [varchar](200) NULL,
	[Timeliness of care national comparison footnote] [varchar](200) NULL,
	[Efficient use of medical imaging national comparison] [varchar](200) NULL,
	[Efficient use of medical imaging national comparison footnote] [varchar](200) NULL,
	[Location] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Physician]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Physician](
	[Stg_Physician_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[NPI] [varchar](200) NULL,
	[PAC ID] [varchar](200) NULL,
	[Professional Enrollment ID] [varchar](200) NULL,
	[Last Name] [varchar](200) NULL,
	[First Name] [varchar](200) NULL,
	[Middle Name] [varchar](200) NULL,
	[Suffix] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[Credential] [varchar](200) NULL,
	[Medical school name] [varchar](200) NULL,
	[Graduation year] [varchar](200) NULL,
	[Primary specialty] [varchar](200) NULL,
	[Secondary specialty 1] [varchar](200) NULL,
	[Secondary specialty 2] [varchar](200) NULL,
	[Secondary specialty 3] [varchar](200) NULL,
	[Secondary specialty 4] [varchar](200) NULL,
	[All secondary specialties] [varchar](200) NULL,
	[Organization legal name] [varchar](200) NULL,
	[Group Practice PAC ID] [varchar](200) NULL,
	[Number of Group Practice members] [varchar](200) NULL,
	[Line 1 Street Address] [varchar](200) NULL,
	[Line 2 Street Address] [varchar](200) NULL,
	[Marker of address line 2 suppression] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[Zip Code] [varchar](200) NULL,
	[Phone Number] [varchar](200) NULL,
	[Hospital affiliation CCN 1] [varchar](200) NULL,
	[Hospital affiliation LBN 1] [varchar](200) NULL,
	[Hospital affiliation CCN 2] [varchar](200) NULL,
	[Hospital affiliation LBN 2] [varchar](200) NULL,
	[Hospital affiliation CCN 3] [varchar](200) NULL,
	[Hospital affiliation LBN 3] [varchar](200) NULL,
	[Hospital affiliation CCN 4] [varchar](200) NULL,
	[Hospital affiliation LBN 4] [varchar](200) NULL,
	[Hospital affiliation CCN 5] [varchar](200) NULL,
	[Hospital affiliation LBN 5] [varchar](200) NULL,
	[Professional accepts Medicare Assignment] [varchar](200) NULL,
	[Lookup_Id_Sk] [int] NULL,
	[Physician_Id_Sk] [int] NULL,
	[Organization_Id_Sk] [int] NULL,
	[SOR_Date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Population]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Population](
	[Stg_Population_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Fact_Population_Id_Sk] [int] NULL,
	[Dim_Population_location_Id_Sk] [int] NULL,
	[Lookup_Id_Sk] [int] NULL,
	[FIPStxt] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Area_Name] [varchar](50) NULL,
	[Rural-urban_Continuum Code_2003] [varchar](50) NULL,
	[Rural-urban_Continuum Code_2013] [varchar](50) NULL,
	[Urban_Influence_Code_2003] [varchar](50) NULL,
	[Urban_Influence_Code_2013] [varchar](50) NULL,
	[Economic_typology_2015] [varchar](50) NULL,
	[CENSUS_2010_POP] [varchar](50) NULL,
	[ESTIMATES_BASE_2010] [varchar](50) NULL,
	[POP_ESTIMATE_2010] [varchar](50) NULL,
	[POP_ESTIMATE_2011] [varchar](50) NULL,
	[POP_ESTIMATE_2012] [varchar](50) NULL,
	[POP_ESTIMATE_2013] [varchar](50) NULL,
	[POP_ESTIMATE_2014] [varchar](50) NULL,
	[POP_ESTIMATE_2015] [varchar](50) NULL,
	[POP_ESTIMATE_2016] [varchar](50) NULL,
	[POP_ESTIMATE_2017] [varchar](50) NULL,
	[POP_ESTIMATE_2018] [varchar](50) NULL,
	[POP_ESTIMATE_2019] [varchar](50) NULL,
	[N_POP_CHG_2010] [varchar](50) NULL,
	[N_POP_CHG_2011] [varchar](50) NULL,
	[N_POP_CHG_2012] [varchar](50) NULL,
	[N_POP_CHG_2013] [varchar](50) NULL,
	[N_POP_CHG_2014] [varchar](50) NULL,
	[N_POP_CHG_2015] [varchar](50) NULL,
	[N_POP_CHG_2016] [varchar](50) NULL,
	[N_POP_CHG_2017] [varchar](50) NULL,
	[N_POP_CHG_2018] [varchar](50) NULL,
	[N_POP_CHG_2019] [varchar](50) NULL,
	[Births_2010] [varchar](50) NULL,
	[Births_2011] [varchar](50) NULL,
	[Births_2012] [varchar](50) NULL,
	[Births_2013] [varchar](50) NULL,
	[Births_2014] [varchar](50) NULL,
	[Births_2015] [varchar](50) NULL,
	[Births_2016] [varchar](50) NULL,
	[Births_2017] [varchar](50) NULL,
	[Births_2018] [varchar](50) NULL,
	[Births_2019] [varchar](50) NULL,
	[Deaths_2010] [varchar](50) NULL,
	[Deaths_2011] [varchar](50) NULL,
	[Deaths_2012] [varchar](50) NULL,
	[Deaths_2013] [varchar](50) NULL,
	[Deaths_2014] [varchar](50) NULL,
	[Deaths_2015] [varchar](50) NULL,
	[Deaths_2016] [varchar](50) NULL,
	[Deaths_2017] [varchar](50) NULL,
	[Deaths_2018] [varchar](50) NULL,
	[Deaths_2019] [varchar](50) NULL,
	[NATURAL_INC_2010] [varchar](50) NULL,
	[NATURAL_INC_2011] [varchar](50) NULL,
	[NATURAL_INC_2012] [varchar](50) NULL,
	[NATURAL_INC_2013] [varchar](50) NULL,
	[NATURAL_INC_2014] [varchar](50) NULL,
	[NATURAL_INC_2015] [varchar](50) NULL,
	[NATURAL_INC_2016] [varchar](50) NULL,
	[NATURAL_INC_2017] [varchar](50) NULL,
	[NATURAL_INC_2018] [varchar](50) NULL,
	[NATURAL_INC_2019] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2010] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2011] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2012] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2013] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2014] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2015] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2016] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2017] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2018] [varchar](50) NULL,
	[INTERNATIONAL_MIG_2019] [varchar](50) NULL,
	[DOMESTIC_MIG_2010] [varchar](50) NULL,
	[DOMESTIC_MIG_2011] [varchar](50) NULL,
	[DOMESTIC_MIG_2012] [varchar](50) NULL,
	[DOMESTIC_MIG_2013] [varchar](50) NULL,
	[DOMESTIC_MIG_2014] [varchar](50) NULL,
	[DOMESTIC_MIG_2015] [varchar](50) NULL,
	[DOMESTIC_MIG_2016] [varchar](50) NULL,
	[DOMESTIC_MIG_2017] [varchar](50) NULL,
	[DOMESTIC_MIG_2018] [varchar](50) NULL,
	[DOMESTIC_MIG_2019] [varchar](50) NULL,
	[NET_MIG_2010] [varchar](50) NULL,
	[NET_MIG_2011] [varchar](50) NULL,
	[NET_MIG_2012] [varchar](50) NULL,
	[NET_MIG_2013] [varchar](50) NULL,
	[NET_MIG_2014] [varchar](50) NULL,
	[NET_MIG_2015] [varchar](50) NULL,
	[NET_MIG_2016] [varchar](50) NULL,
	[NET_MIG_2017] [varchar](50) NULL,
	[NET_MIG_2018] [varchar](50) NULL,
	[NET_MIG_2019] [varchar](50) NULL,
	[RESIDUAL_2010] [varchar](50) NULL,
	[RESIDUAL_2011] [varchar](50) NULL,
	[RESIDUAL_2012] [varchar](50) NULL,
	[RESIDUAL_2013] [varchar](50) NULL,
	[RESIDUAL_2014] [varchar](50) NULL,
	[RESIDUAL_2015] [varchar](50) NULL,
	[RESIDUAL_2016] [varchar](50) NULL,
	[RESIDUAL_2017] [varchar](50) NULL,
	[RESIDUAL_2018] [varchar](50) NULL,
	[RESIDUAL_2019] [varchar](50) NULL,
	[GQ_ESTIMATES_BASE_2010] [varchar](50) NULL,
	[GQ_ESTIMATES_2010] [varchar](50) NULL,
	[GQ_ESTIMATES_2011] [varchar](50) NULL,
	[GQ_ESTIMATES_2012] [varchar](50) NULL,
	[GQ_ESTIMATES_2013] [varchar](50) NULL,
	[GQ_ESTIMATES_2014] [varchar](50) NULL,
	[GQ_ESTIMATES_2015] [varchar](50) NULL,
	[GQ_ESTIMATES_2016] [varchar](50) NULL,
	[GQ_ESTIMATES_2017] [varchar](50) NULL,
	[GQ_ESTIMATES_2018] [varchar](50) NULL,
	[GQ_ESTIMATES_2019] [varchar](50) NULL,
	[R_birth_2011] [varchar](50) NULL,
	[R_birth_2012] [varchar](50) NULL,
	[R_birth_2013] [varchar](50) NULL,
	[R_birth_2014] [varchar](50) NULL,
	[R_birth_2015] [varchar](50) NULL,
	[R_birth_2016] [varchar](50) NULL,
	[R_birth_2017] [varchar](50) NULL,
	[R_birth_2018] [varchar](50) NULL,
	[R_birth_2019] [varchar](50) NULL,
	[R_death_2011] [varchar](50) NULL,
	[R_death_2012] [varchar](50) NULL,
	[R_death_2013] [varchar](50) NULL,
	[R_death_2014] [varchar](50) NULL,
	[R_death_2015] [varchar](50) NULL,
	[R_death_2016] [varchar](50) NULL,
	[R_death_2017] [varchar](50) NULL,
	[R_death_2018] [varchar](50) NULL,
	[R_death_2019] [varchar](50) NULL,
	[R_NATURAL_INC_2011] [varchar](50) NULL,
	[R_NATURAL_INC_2012] [varchar](50) NULL,
	[R_NATURAL_INC_2013] [varchar](50) NULL,
	[R_NATURAL_INC_2014] [varchar](50) NULL,
	[R_NATURAL_INC_2015] [varchar](50) NULL,
	[R_NATURAL_INC_2016] [varchar](50) NULL,
	[R_NATURAL_INC_2017] [varchar](50) NULL,
	[R_NATURAL_INC_2018] [varchar](50) NULL,
	[R_NATURAL_INC_2019] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2011] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2012] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2013] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2014] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2015] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2016] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2017] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2018] [varchar](50) NULL,
	[R_INTERNATIONAL_MIG_2019] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2011] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2012] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2013] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2014] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2015] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2016] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2017] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2018] [varchar](50) NULL,
	[R_DOMESTIC_MIG_2019] [varchar](50) NULL,
	[R_NET_MIG_2011] [varchar](50) NULL,
	[R_NET_MIG_2012] [varchar](50) NULL,
	[R_NET_MIG_2013] [varchar](50) NULL,
	[R_NET_MIG_2014] [varchar](50) NULL,
	[R_NET_MIG_2015] [varchar](50) NULL,
	[R_NET_MIG_2016] [varchar](50) NULL,
	[R_NET_MIG_2017] [varchar](50) NULL,
	[R_NET_MIG_2018] [varchar](50) NULL,
	[R_NET_MIG_2019] [varchar](50) NULL,
	[Column 165] [varchar](50) NULL,
	[Column 166] [varchar](50) NULL,
	[Column 167] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Zip_City_County_lookup]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Zip_City_County_lookup](
	[Lookup_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[SOR_Date] [date] NULL,
	[ZIP] [varchar](50) NULL,
	[STCOUNTYFP] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[COUNTYNAME] [varchar](50) NULL,
	[CLASSFP] [varchar](50) NULL,
	[Dim_Lookup_Id_Sk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Lookup_Id_Sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Physician]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Physician](
	[Physician_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[Lookup_Id_Sk] [int] NULL,
	[NPI] [int] NULL,
	[Last_name] [varchar](200) NULL,
	[First_name] [varchar](200) NULL,
	[Middle_name] [varchar](200) NULL,
	[Suffix] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[Credentials] [varchar](200) NULL,
	[School_name] [varchar](200) NULL,
	[CCN1] [varchar](200) NULL,
	[Graduation_year] [int] NULL,
	[Primary_speciality] [varchar](200) NULL,
	[All_secondary_speciality] [varchar](200) NULL,
	[Start] [date] NULL,
	[End] [date] NULL,
	[Update] [date] NULL,
	[Prior_CCN] [varchar](200) NULL,
	[Hospital_Id_Sk1] [int] NULL,
	[Hospital_Id_Sk2] [int] NULL,
	[Hospital_Id_Sk3] [int] NULL,
	[Hospital_Id_Sk4] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Stg_Physician]    Script Date: 12/17/2020 12:05:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Stg_Physician](
	[Stg_Physician_Id_Sk] [int] IDENTITY(1,1) NOT NULL,
	[NPI] [varchar](200) NULL,
	[PAC ID] [varchar](200) NULL,
	[Professional Enrollment ID] [varchar](200) NULL,
	[Last Name] [varchar](200) NULL,
	[First Name] [varchar](200) NULL,
	[Middle Name] [varchar](200) NULL,
	[Suffix] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[Credential] [varchar](200) NULL,
	[Medical school name] [varchar](200) NULL,
	[Graduation year] [varchar](200) NULL,
	[Primary specialty] [varchar](200) NULL,
	[Secondary specialty 1] [varchar](200) NULL,
	[Secondary specialty 2] [varchar](200) NULL,
	[Secondary specialty 3] [varchar](200) NULL,
	[Secondary specialty 4] [varchar](200) NULL,
	[All secondary specialties] [varchar](200) NULL,
	[Organization legal name] [varchar](200) NULL,
	[Group Practice PAC ID] [varchar](200) NULL,
	[Number of Group Practice members] [varchar](200) NULL,
	[Line 1 Street Address] [varchar](200) NULL,
	[Line 2 Street Address] [varchar](200) NULL,
	[Marker of address line 2 suppression] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[Zip Code] [varchar](200) NULL,
	[Phone Number] [varchar](200) NULL,
	[Hospital affiliation CCN 1] [varchar](200) NULL,
	[Hospital affiliation LBN 1] [varchar](200) NULL,
	[Hospital affiliation CCN 2] [varchar](200) NULL,
	[Hospital affiliation LBN 2] [varchar](200) NULL,
	[Hospital affiliation CCN 3] [varchar](200) NULL,
	[Hospital affiliation LBN 3] [varchar](200) NULL,
	[Hospital affiliation CCN 4] [varchar](200) NULL,
	[Hospital affiliation LBN 4] [varchar](200) NULL,
	[Hospital affiliation CCN 5] [varchar](200) NULL,
	[Hospital affiliation LBN 5] [varchar](200) NULL,
	[Professional accepts Medicare Assignment] [varchar](200) NULL,
	[Lookup_Id_Sk] [int] NULL,
	[Physician_Id_Sk] [int] NULL,
	[Organization_Id_Sk] [int] NULL,
	[SOR_Date] [date] NULL
) ON [PRIMARY]
GO
