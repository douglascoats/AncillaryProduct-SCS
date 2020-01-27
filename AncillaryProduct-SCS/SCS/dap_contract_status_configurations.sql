CREATE TABLE [SCS_Auto_SRA].[dap_contract_status_configurations](
	[idap_contract_status_id] [int] IDENTITY(1,1) NOT NULL,
	[stpa_code] [char](4) NOT NULL,
	[scode] [varchar](50) NOT NULL,
	[sdesc] [varchar](255) NOT NULL,
	[btcanvoid] [bit] NULL,
	[btcancancel] [bit] NULL,
	[icreated_by] [int] NOT NULL,
	[dtcreated] [datetime] NOT NULL,
	[iupdate_user_id] [int] NOT NULL,
	[dtupdate_last] [datetime] NOT NULL,
	[isort_order] [int] NULL,
 CONSTRAINT [PK_dap_contract_status_configurations] PRIMARY KEY CLUSTERED 
(
	[idap_contract_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [SCS_Auto_SRA].[dap_contract_status_configurations] ADD  CONSTRAINT [DF_dap_contract_status_configurations_dtcreated]  DEFAULT (getdate()) FOR [dtcreated]
GO

ALTER TABLE [SCS_Auto_SRA].[dap_contract_status_configurations] ADD  CONSTRAINT [DF_Table_1_dtupdated]  DEFAULT (getdate()) FOR [dtupdate_last]
GO


