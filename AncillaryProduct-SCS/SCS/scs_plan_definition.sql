
CREATE TABLE [SCS_Auto_SRA].[scs_plan_definition](
	[iplan_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[irate_book] [int] NOT NULL,
	[splan] [char](2) NOT NULL,
	[snew_used] [char](1) NOT NULL,
	[icontract_type] [int] NOT NULL,
	[dtplan_from_obsolete] [datetime] NULL,
	[dtplan_to_obsolete] [datetime] NULL,
	[iplan_version] [int] NULL,
	[iprog_id] [int] NULL,
	[splan_desc] [varchar](50) NULL,
	[iext_elig_id] [int] NULL,
	[icancel_rule_id] [int] NULL,
	[scontract_no_prefix] [varchar](50) NULL,
	[tslast_record_maintenance] [timestamp] NULL,
	[suser_id] [varchar](30) NULL,
	[ieffective_date] [int] NULL,
	[ieffective_odom] [int] NULL,
	[iday] [int] NULL,
	[iodometer] [int] NULL,
	[iodometer2] [int] NULL,
	[scontract_suffix] [varchar](50) NULL,
	[btmnf_rule_month_flag] [bit] NULL,
	[imnf_rule_month] [int] NULL,
	[btmnf_rule_miles_flag] [bit] NULL,
	[imnf_rule_miles] [int] NULL,
	[itransfer_limit] [int] NULL,
	[ctransfer_fee] [money] NULL,
	[btcalc_cost_onprice_flag] [bit] NULL,
	[sprice_label] [varchar](10) NULL,
	[dtlast_record_maintenance] [datetime] NULL,
	[btretail_rule_flag_obsolete] [bit] NULL,
	[supdate_user_id] [varchar](30) NULL,
	[iupdate_userid_type] [int] NULL,
	[dtupdate_last] [datetime] NULL,
	[splan_name] [varchar](100) NULL,
	[sbase_rate_source_code] [char](4) NULL,
	[ideductible_fee_source_id] [int] NULL,
	[srating_method_code] [char](4) NULL,
	[srating_based_on_code] [char](4) NULL,
	[sclass] [char](2) NULL,
	[icoverage_type_id] [int] NULL,
	[slevel] [char](1) NULL,
	[irating_iterations] [int] NULL,
	[imgproduct_logo] [image] NULL,
	[sproduct_logo_link] [varchar](100) NULL,
	[spresentation_link] [varchar](100) NULL,
	[sproduct_logo_file] [varchar](100) NULL,
	[scredit_life_type_code] [char](4) NULL,
	[sdecreasing_vs_level_code] [char](4) NULL,
	[ssingle_vs_joint_code] [char](4) NULL,
	[sretroactive_code] [char](4) NULL,
	[sownership_type_code] [char](4) NULL,
	[iform_rule_id] [int] NULL,
	[iretail_rate_rule_id] [int] NULL,
	[itransfer_rule_id] [int] NULL,
	[btpwtrn_rule_month_flag] [bit] NULL,
	[btpwtrn_rule_miles_flag] [bit] NULL,
	[ipwtrn_rule_month] [int] NULL,
	[ipwtrn_rule_miles] [int] NULL,
	[imin_mile_coverage] [int] NULL,
	[imin_month_coverage] [int] NULL,
	[btfinance_amt_req] [bit] NULL,
	[cfinance_amt_max] [money] NULL,
	[iclass_guide_id] [int] NULL,
	[btlimit_liability] [bit] NULL,
	[nlimit_liability_percent] [numeric](6, 5) NULL,
	[btlimit_msrp] [bit] NULL,
	[nlimit_msrp_percent] [numeric](6, 5) NULL,
	[btlimit_dollar] [bit] NULL,
	[climit_dollar_amount] [money] NULL,
	[btlimit_veh_sale_price] [bit] NULL,
	[nlimit_veh_sale_price_percent] [numeric](6, 5) NULL,
	[btlimit_equal_veh_sale_price] [bit] NULL,
	[btexpire_contract_claim_paid] [bit] NULL,
	[nfinance_amt_veh_sale_price] [numeric](6, 5) NULL,
	[cmax_veh_sale_price] [money] NULL,
	[nfinance_amount_msrp] [numeric](6, 5) NULL,
	[cmax_msrp] [money] NULL,
	[nmin_apr] [numeric](9, 8) NULL,
	[nmax_apr] [numeric](9, 8) NULL,
	[btpartial_term_cover] [bit] NULL,
	[cmin_finance_amount] [money] NULL,
	[cmax_finance_amount] [money] NULL,
	[btoption_based] [bit] NULL,
	[sdap_contract_no_prefix] [varchar](50) NULL,
	[sdap_contract_suffix] [varchar](50) NULL,
	[btveh_purchase_date] [bit] NULL,
	[iveh_purchase_days] [int] NULL,
	[btveh_purchase_date_odom_1] [bit] NULL,
	[iveh_purchase_days_odom_1] [int] NULL,
	[btveh_purchase_date_odom_2] [bit] NULL,
	[iveh_purchase_days_odom_2] [int] NULL,
	[dtplan_from] [datetime] NULL,
	[dtplan_to] [datetime] NULL,
	[iclaim_submit_type] [int] NULL,
	[splan_rule_type] [varchar](5) NULL,
	[iretail_rule_definition_id] [int] NULL,
	[cmin_msrp] [money] NULL,
	[ieffective_odom_exception] [int] NULL,
	[bprevent_contract_submission] [bit] NULL,
	[cmin_nada] [money] NULL,
	[nmin_financed_term] [int] NULL,
	[nmax_financed_term] [int] NULL,
 CONSTRAINT [PK_scs_plan_definition] PRIMARY KEY NONCLUSTERED 
(
	[iplan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System generated incremental number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iplan_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A number used as an additional entity to define unique rates at different times.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'irate_book'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code of the plan.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'splan'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicate weather the insured vehicle is old or new.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'snew_used'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract type allowed for this method' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'icontract_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan effective from' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'dtplan_from_obsolete'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan effective to' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'dtplan_to_obsolete'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan version number' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iplan_version'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key referencing scs_programs' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iprog_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan description' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'splan_desc'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key referencing scs_ext_eligibility' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iext_elig_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key referencing scs_cancel_rule_states' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'icancel_rule_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract number prefix' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'scontract_no_prefix'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time stamp of when this was last maintained' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'tslast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the user logged in.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'suser_id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective date calculation rule' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'ieffective_date'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective odometer calculation rule' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'ieffective_odom'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective date calculation' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iday'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Odometer value of the car' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iodometer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Effective odometer calculation rule' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iodometer2'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract number sufix' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'scontract_suffix'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apply manuf. warranty month rule' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'btmnf_rule_month_flag'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manuf rule covered months' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'imnf_rule_month'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apply manuf. warranty miles rule' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'btmnf_rule_miles_flag'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manuf rule covered miles' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'imnf_rule_miles'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transfer limit fro the contract' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'itransfer_limit'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transfer fee amount' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'ctransfer_fee'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Calculate cost by price flag' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'btcalc_cost_onprice_flag'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vehicle price label (Contract screen)' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'sprice_label'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'It is the time the record was added/updated last.' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'dtlast_record_maintenance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apply retail rule for the contarct' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'btretail_rule_flag_obsolete'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'claim submit type (NULL - default from product table, 1 - allow single claim service per submission, 2 - allow multiple claim services per submission)' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iclaim_submit_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For Plan Regulated Rule Typle' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'splan_rule_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For Retail Rule id for Plan or State Level' , @level0type=N'SCHEMA',@level0name=N'SCS_Auto_SRA', @level1type=N'TABLE',@level1name=N'scs_plan_definition', @level2type=N'COLUMN',@level2name=N'iretail_rule_definition_id'
GO


