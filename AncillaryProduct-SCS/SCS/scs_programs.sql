CREATE TABLE [SCS_Auto_SRA].[scs_programs](
	[iprog_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sprog_desc] [varchar](80) NULL,
	[dtlast_record_maintenance] [datetime] NULL,
	[suser_id] [varchar](30) NULL,
	[supdate_user_id] [varchar](30) NULL,
	[iupdate_userid_type] [int] NULL,
	[dtupdate_last] [datetime] NULL,
	[iobligor_id] [int] NULL,
 CONSTRAINT [PK_scs_programs] PRIMARY KEY CLUSTERED 
(
	[iprog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System generated incremental number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_programs', @level2type=N'COLUMN',@level2name=N'iprog_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Program description' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_programs', @level2type=N'COLUMN',@level2name=N'sprog_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'It is the time the record was added/updated last.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_programs', @level2type=N'COLUMN',@level2name=N'dtlast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the user logged in.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_programs', @level2type=N'COLUMN',@level2name=N'suser_id'
GO


