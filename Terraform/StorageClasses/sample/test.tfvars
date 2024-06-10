storage_class_name = "terraform-example-test"
storage_provisioner = "kubernetes.io/gce-pd-test"
reclaim_policy     = "Retain-test"
storage_type       = "pd-standard-test"
mount_options      = ["file_mode=0700", "dir_mode=0777", "mfsymlinks", "uid=1000", "gid=1000", "nobrl", "cache=none"]
