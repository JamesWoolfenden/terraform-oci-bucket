variable "compartment_id" {}


variable "bucket_name" {
  default = "myfirstbucket"
}

variable "bucket_access_type" {
  default = "NoPublicAccess"
}

variable "namespace" {
}

variable "defined_tags" {
  default = { "Operations.CostCenter" = "42" }
}

variable "freeform_tags" {
  default = { "Department" = "Finance" }
}


variable "metadata" {
  type    = map(any)
  default = { "data" = "Blockofdata" }
}

variable "bucket_storage_tier" {
  default = "Standard"
}

variable "retention_rule_display_name" {
  default = "SomeRuleName"
}

variable "retention_rule_duration_time_amount" {
  default = 60
}

variable "retention_rule_duration_time_unit" {
  default = "m"
}

variable "retention_rule_time_rule_locked" {
  default = ""
}

variable "bucket_versioning" {
  type    = string
  default = "Enabled"
}

variable "object_events_enabled" {
  type    = bool
  default = true
}


variable "kms_key" {}
