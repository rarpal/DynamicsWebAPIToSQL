IF OBJECT_ID('dbo.EntityMetadata','U') IS NULL
CREATE TABLE [dbo].[EntityMetadata](
	[EntityName] [nvarchar](64) NOT NULL,
    [EntitySetName] [nvarchar](64) NOT NULL,
    [PrimaryIdAttribute] [nvarchar](64) NOT NULL,
	[Version] [bigint] NULL,
	[Timestamp] [datetime] NULL,
    [DeltaMarker] [nvarchar](255) NULL,
    [DeltaMarkerAttribute] [nvarchar](64) NULL,
	[MetadataId] [nvarchar](64) NULL,
	[Query] [nvarchar](max) NULL,
    [Mapping] [nvarchar](max) NULL,
    [InUse] [bit] NULL DEFAULT 1,
    [IsDeltaLoad] [bit] NULL DEFAULT 1,
    CONSTRAINT pkc_EntityMetadata_EntityName PRIMARY KEY CLUSTERED (EntityName)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
