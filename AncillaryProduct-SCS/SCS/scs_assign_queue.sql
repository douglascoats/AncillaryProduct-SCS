CREATE TABLE [SCS_Auto_SRA].[scs_assign_queue](
	[iassign_id] [int] NOT NULL,
	[stpa_code] [char](4) NOT NULL,
	[suser_id] [varchar](30) NULL,
	[ibound_id] [int] NOT NULL,
	[sbound_type] [char](2) NOT NULL,
	[squeue_name] [char](20) NOT NULL,
	[dtassign_made] [datetime] NULL,
	[dtlast_record_maintenance] [datetime] NULL,
	[supdate_user_id] [varchar](30) NULL,
	[iupdate_userid_type] [int] NULL,
	[dtupdate_last] [datetime] NULL
) ON [PRIMARY]
GO


