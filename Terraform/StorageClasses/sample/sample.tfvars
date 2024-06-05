storage_class_name = "terraform-example"
storage_provisioner = "kubernetes.io/gce-pd"
reclaim_policy     = "Retain"
storage_type       = "pd-standard"
mount_options      = ["file_mode=0700", "dir_mode=0777", "mfsymlinks", "uid=1000", "gid=1000", "nobrl", "cache=none"]
