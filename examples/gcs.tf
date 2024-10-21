resource "random_string" "suffix-gce" {
  for_each    = var.buckets
  length      = 4
  special     = false
  lower       = true
  upper       = false
  min_numeric = 1
  lifecycle {
    ignore_changes = [
      # Ne pas regenerer la ressource en cas d'import
      length, special, min_numeric, upper, lower
    ]
  }
}
# Those buckets will be used on further steps to store terraform state files
module "bucket_gcs" {
  for_each       = var.buckets
  source         = "../"
  project_id     = var.project
  location       = "EUROPE-WEST9"
  storage_class  = each.value.storage_class
  encryption_key = var.encryption_key
  name           = "pa-gcs-${each.value.environnement}-${each.value.couloir}-${each.value.quadrigramme}-${random_string.suffix-gce[each.key].result}"
  labels         = local.labels[each.key]
  iam            = each.value.iam

}


