variable "api_key" {
  default     = # Your API_KEY
}

variable "account_id" {
  default     = # Your Account_Id
}

variable "region" {
  default     = # Your region either U.S or EU
}
variable "entity_name" {
  default = # Must be an exact match to your application name in New Relic
}

variable "entity_domain" {
  default = # BROWSER, INFRA, MOBILE, SYNTH, depending on your entity's domain
}

variable "entity_type" {
  default = # HOST, APPLICATION, etc.,.
}
