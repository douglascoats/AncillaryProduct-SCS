
CREATE TABLE [SCS_Auto_SRA].[scs_claims](
	[iclaim_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[icontract_id] [int] NOT NULL,
	[stpa_code] [char](4) NOT NULL,
	[sclaim_number] [char](16) NOT NULL,
	[iservice_center_id] [int] NULL,
	[sservice_center_type] [char](1) NULL,
	[dtdate_loss_occurred] [datetime] NULL,
	[iodometer_at_time_of_loss] [int] NULL,
	[dtclaim_system_entry_date] [datetime] NULL,
	[suser_id] [varchar](30) NULL,
	[dtlast_claim_maintenance_date] [datetime] NULL,
	[clabor_rate] [money] NULL,
	[dtdate_claim_paid] [datetime] NULL,
	[spayee_type] [char](1) NULL,
	[srepair_order_number] [char](20) NULL,
	[cclaim_amt_deductible] [money] NULL,
	[sclaim_component_loss_code] [char](8) NULL,
	[sclaim_status] [char](2) NOT NULL,
	[sclaim_note] [nvarchar](1000) NULL,
	[sclaim_contact] [varchar](60) NULL,
	[sclaim_authorized_no] [char](12) NULL,
	[iclaim_occur_aig] [int] NULL,
	[spayee_name] [varchar](60) NULL,
	[spayee_addr_1] [varchar](50) NULL,
	[spayee_addr_2] [varchar](50) NULL,
	[spayee_city] [varchar](50) NULL,
	[spayee_state] [char](2) NULL,
	[spayee_zip_code] [varchar](50) NULL,
	[spayee_phone] [char](10) NULL,
	[spayee_fax] [char](10) NULL,
	[spayee_contact] [varchar](60) NULL,
	[dtro_received] [datetime] NULL,
	[sloss_code] [char](8) NULL,
	[sclose_code] [char](2) NULL,
	[iprior_id] [int] NULL,
	[shistory] [varchar](255) NULL,
	[scorrectiveaction] [nvarchar](1000) NULL,
	[ssubstatus] [varchar](1000) NULL,
	[scause] [nvarchar](1000) NULL,
	[spayee_number] [char](18) NULL,
	[tslast_record_maintenance] [timestamp] NULL,
	[iact_id] [int] NULL,
	[scust_phone] [varchar](20) NULL,
	[itrigger_off] [bit] NULL,
	[spay_method_code] [char](4) NULL,
	[ssrv_name] [varchar](80) NULL,
	[dtlast_record_maintenance] [datetime] NULL,
	[spayee_language] [char](2) NULL,
	[supdate_user_id] [varchar](30) NULL,
	[iupdate_userid_type] [int] NULL,
	[dtupdate_last] [datetime] NULL,
	[sadjuster] [varchar](30) NULL,
	[smanufacturer_code] [char](2) NULL,
	[scause_of_loss_code] [varchar](8) NULL,
	[dtinsurance_settlement_date] [datetime] NULL,
	[sclaim_email] [varchar](100) NULL,
	[dtETC] [datetime] NULL,
 CONSTRAINT [PK_iclaim_id] PRIMARY KEY CLUSTERED 
(
	[iclaim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT (getdate()) FOR [dtclaim_system_entry_date]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT ((0)) FOR [iact_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT ((0)) FOR [itrigger_off]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT (getdate()) FOR [dtlast_record_maintenance]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT ('EN') FOR [spayee_language]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT ('ENTRY') FOR [supdate_user_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT ((0)) FOR [iupdate_userid_type]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT (getdate()) FOR [dtupdate_last]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claims] ADD  DEFAULT (NULL) FOR [smanufacturer_code]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System generated incremental number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'iclaim_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key referencing scs_contracts' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'icontract_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Third Party Administrator.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'stpa_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclaim_number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Service Center ID' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'iservice_center_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of repair facility (Dealer/Service Center)' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sservice_center_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loss date of the claim' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'dtdate_loss_occurred'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim loss odometer' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'iodometer_at_time_of_loss'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim entry date' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'dtclaim_system_entry_date'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the user logged in.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'suser_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Labor rate per hour' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'clabor_rate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim paid date' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'dtdate_claim_paid'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payee type code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Repair order number of the claim' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'srepair_order_number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Deductible amount from the customer for the claim' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'cclaim_amt_deductible'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim prime failer loss code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclaim_component_loss_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim status code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclaim_status'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim note (cutomer complaine)' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclaim_note'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Servicer center primary contact' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclaim_contact'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim authorization number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclaim_authorized_no'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees Name' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees first address line' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_addr_1'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees second address line' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_addr_2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees city' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_city'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees State' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_state'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees zip code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_zip_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees Phone Number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_phone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payees Fax' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_fax'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payess contact' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_contact'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Repair order received date' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'dtro_received'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loss code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sloss_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Close code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'sclose_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim priority ID' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'iprior_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last deny reason text' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'shistory'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Calim corrective description' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'scorrectiveaction'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of loss codes for the claim' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'ssubstatus'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vehicle breake down cause note' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'scause'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim default payee number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp of when this was last maintained' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'tslast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key referencing scs_claim_activity_status' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'iact_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer alternative phone number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'scust_phone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Disable trigger flag' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'itrigger_off'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Method this item was paid with' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spay_method_code'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Service center name' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'ssrv_name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'It is the time the record was added/updated last.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'dtlast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Claim payee language code' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_claims', @level2type=N'COLUMN',@level2name=N'spayee_language'
GO


