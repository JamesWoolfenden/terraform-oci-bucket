module "storage" {
  source         = "../../"
  oci_kms_key    = oci_kms_key.test_key
  compartment_id = oci_identity_compartment.tf-compartment.id
}
