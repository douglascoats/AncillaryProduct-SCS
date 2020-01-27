CREATE TABLE [SCS_Auto_SRA].[scs_agents](
	[stpa_code] [char](4) NOT NULL,
	[iagent_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[sagent_number] [char](8) NOT NULL,
	[sagent_name] [varchar](60) NULL,
	[sagent_address_1] [varchar](30) NULL,
	[sagent_address_2] [varchar](30) NULL,
	[sagent_city] [varchar](30) NULL,
	[sagent_state] [char](2) NULL,
	[sagent_zip_code] [char](12) NULL,
	[sagent_phone_number] [char](10) NULL,
	[imanagement_co_id] [int] NULL,
	[sagent_contact] [varchar](60) NULL,
	[stitle] [varchar](25) NULL,
	[sfax] [char](10) NULL,
	[smobilephone] [char](10) NULL,
	[dteffectivedate] [datetime] NULL,
	[tslast_record_maintenance] [timestamp] NULL,
	[suser_id] [varchar](30) NULL,
	[sfederal_tax_id] [varchar](20) NULL,
	[dtlast_record_maintenance] [datetime] NULL,
	[sagent_language] [char](2) NULL,
	[supdate_user_id] [varchar](30) NULL,
	[iupdate_userid_type] [int] NULL,
	[dtupdate_last] [datetime] NULL,
	[sagent_address_1_billing] [varchar](30) NULL,
	[sagent_address_2_billing] [varchar](30) NULL,
	[sagent_city_billing] [varchar](30) NULL,
	[sagent_state_billing] [char](2) NULL,
	[sagent_zip_billing] [char](12) NULL,
	[btagent_active] [bit] NULL,
	[sextension] [varchar](5) NULL,
	[semail] [varchar](100) NULL,
	[sbilling_statement_type_code] [char](4) NULL,
	[sextension_mobile] [varchar](5) NULL,
	[btach_auto_pay] [bit] NOT NULL,
	[ipay_method_id] [int] NULL,
	[icustomer_number_id] [int] NULL,
	[iagent_type_id] [int] NULL,
 CONSTRAINT [PK_scs_agents] PRIMARY KEY CLUSTERED 
(
	[iagent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNK_scs_agents] UNIQUE NONCLUSTERED 
(
	[stpa_code] ASC,
	[sagent_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_agents] ADD  CONSTRAINT [DF_scs_agents_dt_record_main]  DEFAULT (getdate()) FOR [dtlast_record_maintenance]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_agents] ADD  CONSTRAINT [DF__scs_agent__sagen__3D854172]  DEFAULT ('EN') FOR [sagent_language]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_agents] ADD  CONSTRAINT [DF__scs_agent__supda__3C096F59]  DEFAULT ('ENTRY') FOR [supdate_user_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_agents] ADD  CONSTRAINT [DF__scs_agent__iupda__3CFD9392]  DEFAULT ((0)) FOR [iupdate_userid_type]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_agents] ADD  CONSTRAINT [DF__scs_agent__dtupd__3DF1B7CB]  DEFAULT (getdate()) FOR [dtupdate_last]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_agents] ADD  CONSTRAINT [DF__scs_agent__btage__13330DA6]  DEFAULT ((0)) FOR [btagent_active]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Third Party Administrator.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'stpa_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System generated incremental number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'iagent_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number that uniquely identifies an agent.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal name of the agent.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first address line for the agent''s mailing address.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_address_1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second address line for the agent''s mailing address.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_address_2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city for the agent''s mailing address.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_city'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state for the agent''s mailing address.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_state'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the agent''s mailing address.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_zip_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the agent.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_phone_number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key referencing scs_managements' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'imanagement_co_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contact name for agent.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_contact'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Title' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'stitle'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fax number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sfax'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mobile Phone Number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'smobilephone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective date the agent was activated.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'dteffectivedate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp of when this was last maintained' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'tslast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the user logged in.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'suser_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Federal Tax ID' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sfederal_tax_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'It is the time the record was added/updated last.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'dtlast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Agent language code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_agents', @level2type=N'COLUMN',@level2name=N'sagent_language'
GO


