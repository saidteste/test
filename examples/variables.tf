
variable "region" {
  description = "Region to use to host pubsub"
  default     = "europe-west1"
  type        = string
}

variable "buckets" {
  description = "Configuration des buckets avec les rôles IAM"
  type = map(object({
    iam                     = map(list(string))
    storage_class           = string
    quadrigramme            = string
    couloir                 = string
    environnement           = string
    mtech_org_compliance    = number
    mtech_fin_abc_serviceid = string
    mtech_org_partenaire    = string
  }))
}

variable "project" {
  description = "projet for the provider google"
  type        = string
}

variable "encryption_key" {
  description = "KMS key that will be used for encryption."
  type        = string
  default     = null
}
