USE [DW_Demo]
GO

/****** Object:  Table [dbo].[Stg_Hospital]    Script Date: 12/5/2020 8:06:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
select * from [Stg_Physician] order by [Lookup_Id_Sk]
truncate table [Stg_Physician]
CREATE TABLE [dbo].[Stg_Physician](
	Stg_Physician_Id_Sk int identity(1,1) NOT NULL,
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
	[Lookup_Id_Sk] int NULL,
	[Physician_Id_Sk] int NULL,
	[Organization_Id_Sk]int NULL,
	SOR_Date date NULL
) 
GO
DROP table [dbo].[Stg_Physician]
DROP table [dbo].[Stg_Hospital]

CREATE TABLE [dbo].[Stg_Hospital](
	[Stg_Hospital_Sk] int identity(1,1) NOT NULL,
	[Hospital_Id_Sk] int  NULL,
	--[Location_Id_Sk] int  NULL,
	[Lookup_Id_Sk]	int  NULL,
	[Services_Id_Sk] int  NULL,
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
) 
GO


ALTER TABLE [dbo].[Stg_Hospital] ADD  PRIMARY KEY ([Stg_Hospital_Sk]);

--DROP table [dbo].[Stg_Hospital]
select * from [Stg_Physician]

--ALTER TABLE [Stg_Physician]
--ADD Organization_Id_Sk int NULL,
--Physician_Id_Sk int NULL,
--Organization_Location_Id_Sk int NULL,
--Fact_Physician_Id_Sk int NULL,
--Lookup_Id_Sk int NULL;

--Delete FactPhysician;
--Delete Dim_Physician;
--Delete Dim_Organization;
--Delete Dim_Organization_Location;
--Delete DimLookupZipCityState;



drop table [Stg_Population];

CREATE TABLE [dbo].[Stg_Population](
	Stg_Population_Id_Sk int  NULL,
	[Fact_Population_Id_Sk] int NULL,
	[Dim_Population_location_Id_Sk] int  NULL,
	Lookup_Id_Sk int  NULL,
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
)

drop table [Stg_Zip_City_County_lookup]
CREATE TABLE [dbo].[Stg_Zip_City_County_lookup](
	Lookup_Id_Sk	int identity(1,1) NOT NULL,
	SOR_Date date NULL,
	[ZIP] [varchar](50) NULL,
	[STCOUNTYFP] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[COUNTYNAME] [varchar](50) NULL,
	[CLASSFP] [varchar](50) NULL,
	Dim_Lookup_Id_Sk int null,
	PRIMARY KEY(Lookup_Id_Sk)
) 






drop table [Stg_Covid]
delete [Stg_Covid]

SELECT * FROM [Stg_Covid] order by [Lookup_Id_Sk]


CREATE TABLE [dbo].[Stg_Covid](
	Stg_Covid_Id_Sk int identity(1,1) NOT NULL,
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
	[Lookup_Id_Sk] int NULL,
	[Date_Id_Sk] int NULL,
	SOR_Date date NULL,
	PRIMARY KEY (Stg_Covid_Id_Sk),
) 

