output "setup_intents_id" {
  description = "Map of id values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.id }
}
output "setup_intents_application" {
  description = "Map of application values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.application }
}
output "setup_intents_attach_to_self" {
  description = "Map of attach_to_self values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.attach_to_self }
}
output "setup_intents_automatic_payment_methods" {
  description = "Map of automatic_payment_methods values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.automatic_payment_methods }
}
output "setup_intents_cancellation_reason" {
  description = "Map of cancellation_reason values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.cancellation_reason }
}
output "setup_intents_client_secret" {
  description = "Map of client_secret values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.client_secret }
  sensitive   = true
}
output "setup_intents_created" {
  description = "Map of created values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.created }
}
output "setup_intents_customer" {
  description = "Map of customer values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.customer }
}
output "setup_intents_customer_account" {
  description = "Map of customer_account values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.customer_account }
}
output "setup_intents_description" {
  description = "Map of description values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.description }
}
output "setup_intents_excluded_payment_method_types" {
  description = "Map of excluded_payment_method_types values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.excluded_payment_method_types }
}
output "setup_intents_flow_directions" {
  description = "Map of flow_directions values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.flow_directions }
}
output "setup_intents_last_setup_error" {
  description = "Map of last_setup_error values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.last_setup_error }
}
output "setup_intents_latest_attempt" {
  description = "Map of latest_attempt values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.latest_attempt }
}
output "setup_intents_livemode" {
  description = "Map of livemode values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.livemode }
}
output "setup_intents_managed_payments" {
  description = "Map of managed_payments values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.managed_payments }
}
output "setup_intents_mandate" {
  description = "Map of mandate values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.mandate }
}
output "setup_intents_metadata" {
  description = "Map of metadata values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.metadata }
}
output "setup_intents_next_action" {
  description = "Map of next_action values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.next_action }
}
output "setup_intents_object" {
  description = "Map of object values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.object }
}
output "setup_intents_on_behalf_of" {
  description = "Map of on_behalf_of values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.on_behalf_of }
}
output "setup_intents_payment_method" {
  description = "Map of payment_method values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method }
}
output "setup_intents_payment_method_configuration_details" {
  description = "Map of payment_method_configuration_details values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method_configuration_details }
}
output "setup_intents_payment_method_options" {
  description = "Map of payment_method_options values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method_options }
}
output "setup_intents_payment_method_types" {
  description = "Map of payment_method_types values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method_types }
}
output "setup_intents_single_use_mandate" {
  description = "Map of single_use_mandate values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.single_use_mandate }
}
output "setup_intents_status" {
  description = "Map of status values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.status }
}
output "setup_intents_usage" {
  description = "Map of usage values across all setup_intents, keyed the same as var.setup_intents"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.usage }
}

