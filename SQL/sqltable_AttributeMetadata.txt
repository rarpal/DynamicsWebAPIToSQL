IF OBJECT_ID('dbo.AttributeMetadata','U') IS NULL
CREATE TABLE [dbo].[AttributeMetadata](
	[EntityName] [nvarchar](64) NOT NULL,
	[AttributeName] [nvarchar](64) NOT NULL,
	[AttributeType] [nvarchar](64) NOT NULL,
	[AttributeTypeName] [nvarchar](255) NOT NULL,
    [Mapping] [nvarchar](max) NULL,
    [IsValidODataAttribute] [bit] NULL,
	[IsValidForCreate] [bit] NOT NULL,
    [IsValidForRead] [bit] NOT NULL,
	[IsValidForUpdate] [bit] NOT NULL,
	[IsRetrievable] [bit] NULL,
	[IsValidForAdvancedFind] [bit] NULL,
    [IsPrimaryId] [bit] NULL,
	[AttributeTypeCode] [int] NULL,
	[Version] [bigint] NULL,
	[Timestamp] [datetime] NULL,
	[MetadataId] [nvarchar](64) NULL,
	[MaxLength] [int] NULL,
	[Precision] [int] NULL,
    [Targets] [nvarchar](max) NULL,
    [InUse] [bit] NULL DEFAULT 1,
    CONSTRAINT pkc_AttributeMetadata_EntityAttributeName PRIMARY KEY CLUSTERED (EntityName,AttributeName)
) ON [PRIMARY]
;
