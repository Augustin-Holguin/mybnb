Rails.configuration.stripe = {
  :publishable_key => 'pk_test_s1dlaZglPCFfhXHPb1zQ4V6W',
  :secret_key      => 'sk_test_myYcGSpWynOsWVITmZzF9S4P'
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]