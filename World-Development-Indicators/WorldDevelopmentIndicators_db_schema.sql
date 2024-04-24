-- Table Schemata

-- Country table
CREATE TABLE Country(
  CountryCode VARCHAR(10) NOT NULL,
  ShortName VARCHAR(256),
  TableName VARCHAR(50),
  LongName VARCHAR(256),
  Alpha2Code VARCHAR(10),
  CurrencyUnit VARCHAR(50),
  SpecialNotes VARCHAR(5000),
  Region VARCHAR(50),
  IncomeGroup VARCHAR(50),
  Wb2Code VARCHAR(10),
  NationalAccountsBaseYear VARCHAR(1024),
  NationalAccountsReferenceYear VARCHAR(1024),
  SnaPriceValuation VARCHAR(1024),
  LendingCategory VARCHAR(10),
  OtherGroups VARCHAR(50),
  SystemOfNationalAccounts VARCHAR(10000),
  AlternativeConversionFactor VARCHAR(50),
  PppSurveyYear VARCHAR(1024),
  BalanceOfPaymentsManualInUse VARCHAR(256),
  ExternalDebtReportingStatus VARCHAR(50),
  SystemOfTrade VARCHAR(256),
  GovernmentAccountingConcept VARCHAR(256),
  ImfDataDisseminationStandard VARCHAR(256),
  LatestPopulationCensus VARCHAR(256),
  LatestHouseholdSurvey VARCHAR(256),
  SourceOfMostRecentIncomeAndExpenditureData VARCHAR(512),
  VitalRegistrationComplete VARCHAR(256),
  LatestAgriculturalCensus VARCHAR(256),
  LatestIndustrialData VARCHAR(256),
  LatestTradeData DECIMAL,
  LatestWaterWithdrawalData DECIMAL,
  PRIMARY KEY (CountryCode)
);

-- Series table
CREATE TABLE Series(
  seriescode VARCHAR(50) NOT NULL,
  Topic VARCHAR(512),
  IndicatorName VARCHAR(256),
  ShortDefinition VARCHAR(1024),
  LongDefinition VARCHAR(10000),
  UnitOfMeasure VARCHAR(50),
  Periodicity VARCHAR(10),
  BasePeriod VARCHAR(50),
  OtherNotes VARCHAR(5000),
  AggregationMethod VARCHAR(512),
  LimitationsAndExceptions VARCHAR(5000),
  NotesFromOriginalSource VARCHAR(5000),
  GeneralComments VARCHAR(5000),
  Source VARCHAR(5000),
  StatisticalConceptAndMethodology VARCHAR(5000),
  DevelopmentRelevance VARCHAR(5000),
  RelatedSourceLinks VARCHAR(5000),
  OtherWebLinks VARCHAR(5000),
  RelatedIndicators VARCHAR(5000),
  LicenseType VARCHAR(50),
  PRIMARY KEY (seriescode)
);  


-- CountryNotes table
CREATE TABLE CountryNotes(
  countrycode VARCHAR(10) NOT NULL,
  seriescode VARCHAR(50) NOT NULL,
  description VARCHAR(10000),
  FOREIGN KEY (countrycode) REFERENCES Country (countrycode),
  FOREIGN KEY (seriescode) REFERENCES Series (seriescode)
);

-- Footnotes table
CREATE TABLE Footnotes(
  countrycode VARCHAR(10) NOT NULL,
  seriescode VARCHAR(50) NOT NULL,
  year VARCHAR(10),
  description VARCHAR(10000),
  FOREIGN KEY (countrycode) REFERENCES Country (countrycode),
  FOREIGN KEY (seriescode) REFERENCES Series (seriescode)
);

-- Indicators table
CREATE TABLE Indicators(
  CountryName VARCHAR(64),
  CountryCode VARCHAR(10),
  IndicatorName VARCHAR(256) NOT NULL,
  IndicatorCode VARCHAR(50),
  Year INTEGER,
  Value DECIMAL,
  FOREIGN KEY (countrycode) REFERENCES Country (countrycode)
);

-- Series Notes table
CREATE TABLE SeriesNotes(
  seriescode VARCHAR(50) NOT NULL,
  year VARCHAR(10),
  description VARCHAR(10000),
  FOREIGN KEY (seriescode) REFERENCES Series (seriescode)
);



