locals {
  env_map = {
    poc    = "p",
    dev    = "d",
    devel  = "d",
    test   = "t",
    essai  = "s",
    qualif = "q",
    prod   = "x"
  }

  labels = {
    for bucket, details in var.buckets : bucket => {
      mtech_org_environnement = local.env_map[lower(details.environnement)]
      mtech_org_couloir       = lower(details.couloir)
      mtech_org_compliance    = details.mtech_org_compliance
      mtech_ops_quadri        = lower(details.quadrigramme)
      mtech_fin_abc_serviceid = details.mtech_fin_abc_serviceid
      mtech_org_partenaire    = details.mtech_org_partenaire
      mtech_fin_abc_activity  = "expaas"
    }
  }

}
