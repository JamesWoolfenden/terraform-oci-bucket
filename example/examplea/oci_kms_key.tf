resource "oci_kms_key" "example" {
  compartment_id = oci_identity_compartment.tf-compartment.id
  display_name   = "First Oracle KMS key"
  key_shape {
    algorithm = "RSA"
    length    = 512
  }
  management_endpoint = var.management_endpoint
}
