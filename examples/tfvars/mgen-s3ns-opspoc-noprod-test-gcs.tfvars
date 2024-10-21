project        = "mtech-s3ns-opspoc-noprod"
encryption_key = "projects/mgen-cmek-prod/locations/europe-west9/keyRings/se-kr-mgen-s3ns-opspoc-noprod/cryptoKeys/se-key-mgen-s3ns-opspoc-noprod"

buckets = {
  "bucket1" = {
    couloir                 = "T0180"
    environnement           = "Test"
    quadrigramme            = "poc-in"
    storage_class           = "STANDARD"
    mtech_org_compliance    = "2"
    mtech_fin_abc_serviceid = "x996040"
    mtech_org_partenaire    = "mgen"
    iam = {
      "roles/storage.objectViewer" = [
        "serviceAccount:service-1038485144699@gs-project-accounts.iam.gserviceaccount.com"
      ]
    }
  },
  "bucket2" = {
    couloir                 = "T0180"
    environnement           = "Test"
    quadrigramme            = "poc-out"
    storage_class           = "STANDARD"
    mtech_org_compliance    = "2"
    mtech_fin_abc_serviceid = "x996040"
    mtech_org_partenaire    = "mgen"
    iam = {
      "roles/storage.objectViewer" = [
        "serviceAccount:service-1038485144699@gs-project-accounts.iam.gserviceaccount.com"
      ]
    }
  }
}

