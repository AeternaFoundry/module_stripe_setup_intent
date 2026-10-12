output "setup_intents_id" {
  description = "Map of id values across all setup_intents, keyed the same as var.setup_intents except keys with no id are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "setup_intents_application" {
  description = "Map of application values across all setup_intents, keyed the same as var.setup_intents except keys with no application are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.application if v.application != null && length(v.application) > 0 }
}
output "setup_intents_attach_to_self" {
  description = "Map of attach_to_self values across all setup_intents, keyed the same as var.setup_intents except keys with no attach_to_self are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.attach_to_self if v.attach_to_self != null }
}
output "setup_intents_automatic_payment_methods" {
  description = "Map of automatic_payment_methods values across all setup_intents, keyed the same as var.setup_intents except keys with no automatic_payment_methods are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.automatic_payment_methods if v.automatic_payment_methods != null && length(v.automatic_payment_methods) > 0 }
}
output "setup_intents_cancellation_reason" {
  description = "Map of cancellation_reason values across all setup_intents, keyed the same as var.setup_intents except keys with no cancellation_reason are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.cancellation_reason if v.cancellation_reason != null && length(v.cancellation_reason) > 0 }
}
output "setup_intents_client_secret" {
  description = "Map of client_secret values across all setup_intents, keyed the same as var.setup_intents except keys with no client_secret are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "setup_intents_created" {
  description = "Map of created values across all setup_intents, keyed the same as var.setup_intents except keys with no created are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.created if v.created != null }
}
output "setup_intents_customer" {
  description = "Map of customer values across all setup_intents, keyed the same as var.setup_intents except keys with no customer are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "setup_intents_customer_account" {
  description = "Map of customer_account values across all setup_intents, keyed the same as var.setup_intents except keys with no customer_account are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.customer_account if v.customer_account != null && length(v.customer_account) > 0 }
}
output "setup_intents_description" {
  description = "Map of description values across all setup_intents, keyed the same as var.setup_intents except keys with no description are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "setup_intents_excluded_payment_method_types" {
  description = "Map of excluded_payment_method_types values across all setup_intents, keyed the same as var.setup_intents except keys with no excluded_payment_method_types are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.excluded_payment_method_types if v.excluded_payment_method_types != null && length(v.excluded_payment_method_types) > 0 }
}
output "setup_intents_flow_directions" {
  description = "Map of flow_directions values across all setup_intents, keyed the same as var.setup_intents except keys with no flow_directions are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.flow_directions if v.flow_directions != null && length(v.flow_directions) > 0 }
}
output "setup_intents_last_setup_error" {
  description = "Map of last_setup_error values across all setup_intents, keyed the same as var.setup_intents except keys with no last_setup_error are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.last_setup_error if v.last_setup_error != null && length(v.last_setup_error) > 0 }
}
output "setup_intents_latest_attempt" {
  description = "Map of latest_attempt values across all setup_intents, keyed the same as var.setup_intents except keys with no latest_attempt are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.latest_attempt if v.latest_attempt != null && length(v.latest_attempt) > 0 }
}
output "setup_intents_livemode" {
  description = "Map of livemode values across all setup_intents, keyed the same as var.setup_intents except keys with no livemode are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.livemode if v.livemode != null }
}
output "setup_intents_managed_payments" {
  description = "Map of managed_payments values across all setup_intents, keyed the same as var.setup_intents except keys with no managed_payments are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.managed_payments if v.managed_payments != null && length(v.managed_payments) > 0 }
}
output "setup_intents_mandate" {
  description = "Map of mandate values across all setup_intents, keyed the same as var.setup_intents except keys with no mandate are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.mandate if v.mandate != null && length(v.mandate) > 0 }
}
output "setup_intents_metadata" {
  description = "Map of metadata values across all setup_intents, keyed the same as var.setup_intents except keys with no metadata are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "setup_intents_next_action" {
  description = "Map of next_action values across all setup_intents, keyed the same as var.setup_intents except keys with no next_action are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.next_action if v.next_action != null && length(v.next_action) > 0 }
}
output "setup_intents_object" {
  description = "Map of object values across all setup_intents, keyed the same as var.setup_intents except keys with no object are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.object if v.object != null && length(v.object) > 0 }
}
output "setup_intents_on_behalf_of" {
  description = "Map of on_behalf_of values across all setup_intents, keyed the same as var.setup_intents except keys with no on_behalf_of are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.on_behalf_of if v.on_behalf_of != null && length(v.on_behalf_of) > 0 }
}
output "setup_intents_payment_method" {
  description = "Map of payment_method values across all setup_intents, keyed the same as var.setup_intents except keys with no payment_method are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method if v.payment_method != null && length(v.payment_method) > 0 }
}
output "setup_intents_payment_method_configuration_details" {
  description = "Map of payment_method_configuration_details values across all setup_intents, keyed the same as var.setup_intents except keys with no payment_method_configuration_details are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method_configuration_details if v.payment_method_configuration_details != null && length(v.payment_method_configuration_details) > 0 }
}
output "setup_intents_payment_method_options" {
  description = "Map of payment_method_options values across all setup_intents, keyed the same as var.setup_intents except keys with no payment_method_options are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method_options if v.payment_method_options != null && length(v.payment_method_options) > 0 }
}
output "setup_intents_payment_method_types" {
  description = "Map of payment_method_types values across all setup_intents, keyed the same as var.setup_intents except keys with no payment_method_types are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.payment_method_types if v.payment_method_types != null && length(v.payment_method_types) > 0 }
}
output "setup_intents_single_use_mandate" {
  description = "Map of single_use_mandate values across all setup_intents, keyed the same as var.setup_intents except keys with no single_use_mandate are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.single_use_mandate if v.single_use_mandate != null && length(v.single_use_mandate) > 0 }
}
output "setup_intents_status" {
  description = "Map of status values across all setup_intents, keyed the same as var.setup_intents except keys with no status are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.status if v.status != null && length(v.status) > 0 }
}
output "setup_intents_usage" {
  description = "Map of usage values across all setup_intents, keyed the same as var.setup_intents except keys with no usage are omitted"
  value       = { for k, v in stripe_setup_intent.setup_intents : k => v.usage if v.usage != null && length(v.usage) > 0 }
}

