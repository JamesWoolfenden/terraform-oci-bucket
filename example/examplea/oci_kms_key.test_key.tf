resource "oci_kms_key" "test_key" {
  display_name = "James1"
  key_shape {
    algorithm = "AES"
    length    = 24
  }
  compartment_id      = oci_identity_compartment.tf-compartment.id
  management_endpoint = oci_kms_vault.test_vault.crypto_endpoint
}

resource "oci_kms_vault" "test_vault" {
  compartment_id = oci_identity_compartment.tf-compartment.id
  display_name   = "myfirstvault"
  vault_type     = "private"
}
