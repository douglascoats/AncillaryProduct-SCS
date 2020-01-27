
CREATE TABLE [SCS_Auto_SRA].[scs_claim_details](
	[idetail_id] [int] NOT NULL,
	[iclaim_id] [int] NOT NULL,
	[sdetail_type] [varchar](4) NULL,
	[sjob_no] [char](4) NULL,
	[sloss_code] [char](8) NULL,
	[sdetail_desc] [varchar](255) NULL,
	[btcovered_flag] [bit] NULL,
	[nreq_qty] [numeric](8, 3) NULL,
	[creq_unit_cost] [money] NULL,
	[creq_total] [money] NULL,
	[nauth_qty] [numeric](8, 3) NULL,
	[cauth_unit_cost] [money] NULL,
	[cauth_total] [money] NULL,
	[ntax_percent] [numeric](6, 5) NULL,
	[ctax_amt] [money] NULL,
	[cext_total_amt] [money] NULL,
	[iclaim_det_status_id] [int] NULL,
	[ireason_id] [int] NULL,
	[spayee_type] [char](1) NULL,
	[dtpaid] [datetime] NULL,
	[dtentered] [datetime] NULL,
	[icheck_number_obsolete] [int] NULL,
	[iref_pay_number] [int] NULL,
	[camt_paid] [money] NULL,
	[dtsurvey_printed] [datetime] NULL,
	[dtpay_processed] [datetime] NULL,
	[npart_mark_up] [numeric](6, 5) NULL,
	[clabor_rate] [money] NULL,
	[nlabor_tax_rate] [numeric](6, 5) NULL,
	[npart_tax_rate] [numeric](6, 5) NULL,
	[dtlast_record_maintenance] [datetime] NULL,
	[suser_id] [varchar](30) NULL,
	[ctax_amt_1] [money] NULL,
	[ctax_amt_2] [money] NULL,
	[iclaim_payee_id] [int] NULL,
	[spayee_language] [char](2) NULL,
	[supdate_user_id] [varchar](30) NULL,
	[iupdate_userid_type] [int] NULL,
	[dtupdate_last] [datetime] NULL,
	[iclaim_servicer_id] [int] NULL,
	[btsublet_flag] [bit] NULL,
	[cmax_amount] [money] NULL,
	[ssettlement_code] [nchar](4) NULL,
	[cmin_amount] [money] NULL,
	[ipayment_id] [int] NULL,
	[scheck_number] [varchar](20) NULL,
	[slabor_search_path] [varchar](max) NULL,
	[spart_code] [nvarchar](10) NULL,
	[btpart_code_covered] [bit] NULL,
	[uclaim_detail_uuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [btcovered_flag]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [nreq_qty]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [creq_unit_cost]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [creq_total]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [cauth_unit_cost]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [cauth_total]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [ntax_percent]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [ctax_amt]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [iclaim_det_status_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [ireason_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT (getdate()) FOR [dtentered]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [camt_paid]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [npart_mark_up]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [clabor_rate]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [nlabor_tax_rate]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [npart_tax_rate]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT (getdate()) FOR [dtlast_record_maintenance]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [ctax_amt_1]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [ctax_amt_2]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [iclaim_payee_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ('EN') FOR [spayee_language]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ('ENTRY') FOR [supdate_user_id]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [iupdate_userid_type]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT (getdate()) FOR [dtupdate_last]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  DEFAULT ((0)) FOR [btsublet_flag]
GO

ALTER TABLE [SCS_Auto_SRA].[scs_claim_details] ADD  CONSTRAINT [DF_scs_claim_details_uclaim_detail_uuid]  DEFAULT (newid()) FOR [uclaim_detail_uuid]
GO
