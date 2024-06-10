storage_class_name = "terraform-example-prod"
storage_provisioner = "kubernetes.io/gce-pd-prod"
reclaim_policy     = "Retain-prod"
storage_type       = "pd-standard-prod"
mount_options      = ["file_mode=0700", "dir_mode=0777", "mfsymlinks", "uid=1000", "gid=1000", "nobrl", "cache=none"]
