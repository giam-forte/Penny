
CREATE EXTERNAL TABLE KPMG_billing_Athena_withID.k_p_m_g_billing_athena_with_i_d(
	identity_line_item_id STRING,
	identity_time_interval STRING,
	bill_invoice_id STRING,
	bill_billing_entity STRING,
	bill_bill_type STRING,
	bill_payer_account_id STRING,
	bill_billing_period_start_date TIMESTAMP,
	bill_billing_period_end_date TIMESTAMP,
	line_item_usage_account_id STRING,
	line_item_line_item_type STRING,
	line_item_usage_start_date TIMESTAMP,
	line_item_usage_end_date TIMESTAMP,
	line_item_product_code STRING,
	line_item_usage_type STRING,
	line_item_operation STRING,
	line_item_availability_zone STRING,
	line_item_resource_id STRING,
	line_item_usage_amount DOUBLE,
	line_item_normalization_factor DOUBLE,
	line_item_normalized_usage_amount DOUBLE,
	line_item_currency_code STRING,
	line_item_unblended_rate STRING,
	line_item_unblended_cost DOUBLE,
	line_item_blended_rate STRING,
	line_item_blended_cost DOUBLE,
	line_item_line_item_description STRING,
	line_item_tax_type STRING,
	line_item_legal_entity STRING,
	product_product_name STRING,
	product_alarm_type STRING,
	product_availability STRING,
	product_availability_zone STRING,
	product_bundle STRING,
	product_cache_engine STRING,
	product_cache_memory_size_gb STRING,
	product_capacitystatus STRING,
	product_category STRING,
	product_clock_speed STRING,
	product_content_type STRING,
	product_cputype STRING,
	product_current_generation STRING,
	product_data_transfer_quota STRING,
	product_database_edition STRING,
	product_database_engine STRING,
	product_dedicated_ebs_throughput STRING,
	product_deployment_option STRING,
	product_description STRING,
	product_directory_size STRING,
	product_directory_type STRING,
	product_directory_type_description STRING,
	product_durability STRING,
	product_ecu STRING,
	product_edition STRING,
	product_endpoint_type STRING,
	product_engine_code STRING,
	product_enhanced_networking_supported STRING,
	product_execution_frequency STRING,
	product_execution_location STRING,
	product_fee_code STRING,
	product_fee_description STRING,
	product_free_query_types STRING,
	product_free_tier STRING,
	product_free_trial STRING,
	product_free_usage_included STRING,
	product_frequency_mode STRING,
	product_from_location STRING,
	product_from_location_type STRING,
	product_georegioncode STRING,
	product_gpu STRING,
	product_gpu_memory STRING,
	product_group STRING,
	product_group_description STRING,
	product_instance STRING,
	product_instance_family STRING,
	product_instance_type STRING,
	product_instance_type_family STRING,
	product_io STRING,
	product_license STRING,
	product_license_model STRING,
	product_location STRING,
	product_location_type STRING,
	product_mailbox_storage STRING,
	product_max_iops_burst_performance STRING,
	product_max_iopsvolume STRING,
	product_max_throughputvolume STRING,
	product_max_volume_size STRING,
	product_maximum_storage_volume STRING,
	product_memory STRING,
	product_memory_gib STRING,
	product_memorytype STRING,
	product_message_delivery_frequency STRING,
	product_message_delivery_order STRING,
	product_min_volume_size STRING,
	product_minimum_storage_volume STRING,
	product_network_performance STRING,
	product_normalization_size_factor STRING,
	product_operating_system STRING,
	product_operation STRING,
	product_origin STRING,
	product_physical_cpu STRING,
	product_physical_gpu STRING,
	product_physical_processor STRING,
	product_pre_installed_sw STRING,
	product_processor_architecture STRING,
	product_processor_features STRING,
	product_product_family STRING,
	product_provisioned STRING,
	product_queue_type STRING,
	product_recipient STRING,
	product_region STRING,
	product_request_description STRING,
	product_request_type STRING,
	product_resource_endpoint STRING,
	product_resource_type STRING,
	product_rootvolume STRING,
	product_routing_target STRING,
	product_routing_type STRING,
	product_running_mode STRING,
	product_servicecode STRING,
	product_servicename STRING,
	product_sku STRING,
	product_software_included STRING,
	product_storage STRING,
	product_storage_class STRING,
	product_storage_media STRING,
	product_storage_type STRING,
	product_subscription_type STRING,
	product_tenancy STRING,
	product_tiertype STRING,
	product_to_location STRING,
	product_to_location_type STRING,
	product_transfer_type STRING,
	product_usage_family STRING,
	product_usagetype STRING,
	product_uservolume STRING,
	product_vcpu STRING,
	product_version STRING,
	product_virtual_interface_type STRING,
	product_volume_type STRING,
	pricing_lease_contract_length STRING,
	pricing_offering_class STRING,
	pricing_purchase_option STRING,
	pricing_rate_id STRING,
	pricing_public_on_demand_cost DOUBLE,
	pricing_public_on_demand_rate STRING,
	pricing_term STRING,
	pricing_unit STRING,
	reservation_amortized_upfront_cost_for_usage DOUBLE,
	reservation_amortized_upfront_fee_for_billing_period DOUBLE,
	reservation_effective_cost DOUBLE,
	reservation_end_time STRING,
	reservation_modification_status STRING,
	reservation_normalized_units_per_reservation STRING,
	reservation_number_of_reservations STRING,
	reservation_recurring_fee_for_usage DOUBLE,
	reservation_reservation_a_r_n STRING,
	reservation_start_time STRING,
	reservation_subscription_id STRING,
	reservation_total_reserved_normalized_units STRING,
	reservation_total_reserved_units STRING,
	reservation_units_per_reservation STRING,
	reservation_unused_amortized_upfront_fee_for_billing_period DOUBLE,
	reservation_unused_normalized_unit_quantity DOUBLE,
	reservation_unused_quantity DOUBLE,
	reservation_unused_recurring_fee DOUBLE,
	reservation_upfront_value DOUBLE,
	resource_tags_aws_cloudformation_stack_name STRING,
	resource_tags_aws_created_by STRING,
	resource_tags_user_application STRING,
	resource_tags_user_department STRING,
	resource_tags_user_description STRING,
	resource_tags_user_function STRING,
	resource_tags_user_name STRING,
	resource_tags_user_owner STRING,
	resource_tags_user_project STRING,
	resource_tags_user_project_contact STRING,
	resource_tags_user_department STRING,
	resource_tags_user_description STRING
)

PARTITIONED BY (
	year STRING,
	month STRING
)
         
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH  SERDEPROPERTIES (
 'serialization.format' = '1'
) LOCATION 's3://kpmgcloud-cost-report/KPMG_billing_athena_id/KPMG_billing_Athena_withID/KPMG_billing_Athena_withID/'
     