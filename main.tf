resource "stripe_setup_intent" "setup_intents" {
  for_each = var.setup_intents

  attach_to_self                = each.value.attach_to_self
  automatic_payment_methods     = each.value.automatic_payment_methods
  confirm                       = each.value.confirm
  confirmation_token            = each.value.confirmation_token
  customer                      = each.value.customer
  customer_account              = each.value.customer_account
  description                   = each.value.description
  excluded_payment_method_types = each.value.excluded_payment_method_types
  flow_directions               = each.value.flow_directions
  mandate_data                  = each.value.mandate_data
  metadata                      = each.value.metadata
  on_behalf_of                  = each.value.on_behalf_of
  payment_method                = each.value.payment_method
  payment_method_configuration  = each.value.payment_method_configuration
  payment_method_data           = each.value.payment_method_data
  payment_method_options        = each.value.payment_method_options
  payment_method_types          = each.value.payment_method_types
  return_url                    = each.value.return_url
  single_use                    = each.value.single_use
  usage                         = each.value.usage
  use_stripe_sdk                = each.value.use_stripe_sdk
}

