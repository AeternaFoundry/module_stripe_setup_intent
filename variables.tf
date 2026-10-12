variable "setup_intents" {
  description = <<EOT
Map of setup_intents, attributes below
Optional:
    - attach_to_self
    - automatic_payment_methods
    - confirm
    - confirmation_token
    - customer
    - customer_account
    - description
    - excluded_payment_method_types
    - flow_directions
    - mandate_data
    - metadata
    - on_behalf_of
    - payment_method
    - payment_method_configuration
    - payment_method_data
    - payment_method_options
    - payment_method_types
    - return_url
    - single_use
    - usage
    - use_stripe_sdk
EOT

  type = map(object({
    attach_to_self = optional(bool)
    automatic_payment_methods = optional(object({
      allow_redirects = optional(string)
      enabled         = bool
    }))
    confirm                       = optional(bool)
    confirmation_token            = optional(string)
    customer                      = optional(string)
    customer_account              = optional(string)
    description                   = optional(string)
    excluded_payment_method_types = optional(list(string))
    flow_directions               = optional(list(string))
    mandate_data = optional(object({
      customer_acceptance = object({
        accepted_at = optional(number)
        online = optional(object({
          ip_address = string
          user_agent = string
        }))
        type = string
      })
    }))
    metadata                     = optional(map(string))
    on_behalf_of                 = optional(string)
    payment_method               = optional(string)
    payment_method_configuration = optional(string)
    payment_method_data = optional(object({
      acss_debit = optional(object({
        account_number     = string
        institution_number = string
        transit_number     = string
      }))
      allow_redisplay = optional(string)
      au_becs_debit = optional(object({
        account_number = string
        bsb_number     = string
      }))
      bacs_debit = optional(object({
        account_number = optional(string)
        sort_code      = optional(string)
      }))
      billing_details = optional(object({
        address = optional(object({
          city        = optional(string)
          country     = optional(string)
          line1       = optional(string)
          line2       = optional(string)
          postal_code = optional(string)
          state       = optional(string)
        }))
        email  = optional(string)
        name   = optional(string)
        phone  = optional(string)
        tax_id = optional(string)
      }))
      boleto = optional(object({
        tax_id = string
      }))
      eps = optional(object({
        bank = optional(string)
      }))
      fpx = optional(object({
        account_holder_type = optional(string)
        bank                = string
      }))
      ideal = optional(object({
        bank = optional(string)
      }))
      klarna = optional(object({
        dob = optional(object({
          day   = number
          month = number
          year  = number
        }))
      }))
      metadata = optional(map(string))
      naver_pay = optional(object({
        funding = optional(string)
      }))
      nz_bank_account = optional(object({
        account_holder_name = optional(string)
        account_number      = string
        bank_code           = string
        branch_code         = string
        reference           = optional(string)
        suffix              = string
      }))
      p24 = optional(object({
        bank = optional(string)
      }))
      payto = optional(object({
        account_number = optional(string)
        bsb_number     = optional(string)
        pay_id         = optional(string)
      }))
      radar_options = optional(object({
        session = optional(string)
      }))
      sepa_debit = optional(object({
        iban = string
      }))
      sofort = optional(object({
        country = string
      }))
      type = string
      upi = optional(object({
        mandate_options = optional(object({
          amount      = optional(number)
          amount_type = optional(string)
          description = optional(string)
          end_date    = optional(number)
        }))
      }))
      us_bank_account = optional(object({
        account_holder_type           = optional(string)
        account_number                = optional(string)
        account_type                  = optional(string)
        financial_connections_account = optional(string)
        routing_number                = optional(string)
      }))
    }))
    payment_method_options = optional(object({
      acss_debit = optional(object({
        currency = optional(string)
        mandate_options = optional(object({
          custom_mandate_url   = optional(string)
          default_for          = optional(list(string))
          interval_description = optional(string)
          payment_schedule     = optional(string)
          transaction_type     = optional(string)
        }))
        verification_method = optional(string)
      }))
      bacs_debit = optional(object({
        mandate_options = optional(object({
          reference_prefix = optional(string)
        }))
      }))
      card = optional(object({
        mandate_options = optional(object({
          amount          = number
          amount_type     = string
          currency        = string
          description     = optional(string)
          end_date        = optional(number)
          interval        = string
          interval_count  = optional(number)
          reference       = string
          start_date      = number
          supported_types = optional(list(string))
        }))
        moto                   = optional(bool)
        network                = optional(string)
        request_three_d_secure = optional(string)
        three_d_secure = optional(object({
          ares_trans_status             = optional(string)
          cryptogram                    = optional(string)
          electronic_commerce_indicator = optional(string)
          network_options = optional(object({
            cartes_bancaires = optional(object({
              cb_avalgo    = string
              cb_exemption = optional(string)
              cb_score     = optional(number)
            }))
          }))
          requestor_challenge_indicator = optional(string)
          transaction_id                = optional(string)
          version                       = optional(string)
        }))
      }))
      klarna = optional(object({
        currency = optional(string)
        on_demand = optional(object({
          average_amount          = optional(number)
          maximum_amount          = optional(number)
          minimum_amount          = optional(number)
          purchase_interval       = optional(string)
          purchase_interval_count = optional(number)
        }))
        preferred_locale = optional(string)
        subscriptions = optional(list(object({
          interval       = string
          interval_count = optional(number)
          name           = optional(string)
          next_billing = object({
            amount = number
            date   = string
          })
          reference = string
        })))
      }))
      link = optional(object({
        persistent_token = optional(string)
      }))
      paypal = optional(object({
        billing_agreement_id = optional(string)
      }))
      payto = optional(object({
        mandate_options = optional(object({
          amount              = optional(number)
          amount_type         = optional(string)
          end_date            = optional(string)
          payment_schedule    = optional(string)
          payments_per_period = optional(number)
          purpose             = optional(string)
          start_date          = optional(string)
        }))
      }))
      pix = optional(object({
        mandate_options = optional(object({
          amount              = optional(number)
          amount_includes_iof = optional(string)
          amount_type         = optional(string)
          currency            = optional(string)
          end_date            = optional(string)
          payment_schedule    = optional(string)
          reference           = optional(string)
          start_date          = optional(string)
        }))
      }))
      sepa_debit = optional(object({
        mandate_options = optional(object({
          reference_prefix = optional(string)
        }))
      }))
      upi = optional(object({
        mandate_options = optional(object({
          amount      = optional(number)
          amount_type = optional(string)
          description = optional(string)
          end_date    = optional(number)
        }))
        setup_future_usage = optional(string)
      }))
      us_bank_account = optional(object({
        financial_connections = optional(object({
          filters = optional(object({
            account_subcategories = optional(list(string))
          }))
          permissions = optional(list(string))
          prefetch    = optional(list(string))
          return_url  = optional(string)
        }))
        mandate_options = optional(object({
          collection_method = optional(string)
        }))
        networks = optional(object({
          requested = optional(list(string))
        }))
        verification_method = optional(string)
      }))
    }))
    payment_method_types = optional(list(string))
    return_url           = optional(string)
    single_use = optional(object({
      amount   = number
      currency = string
    }))
    usage          = optional(string)
    use_stripe_sdk = optional(bool)
  }))
}

