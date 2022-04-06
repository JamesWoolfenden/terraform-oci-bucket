module "storage" {
  source         = "../../"
  compartment_id = oci_identity_compartment.tf-compartment.id
  namespace      = data.oci_objectstorage_namespace.examplea.namespace
  bucket_name    = "bucket-20211022-1415"
  kms_key        = oci_kms_key.example
  defined_tags   = var.defined_tags
}

data "oci_objectstorage_namespace" "examplea" {
  compartment_id = oci_identity_compartment.tf-compartment.id
}
