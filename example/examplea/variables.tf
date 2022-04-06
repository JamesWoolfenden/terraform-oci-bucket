variable "tenancy_id" {
  default = ""
}

variable "defined_tags" {
  type = map(any)
}

variable "management_endpoint" {
  default = "https://cfre2tzhaacpk-management.kms.uk-london-1.oraclecloud.com"
}
