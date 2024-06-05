cron_job_name      = "demo"
cron_job_schedule  = "1 0 * * *"
cron_job_image     = "busybox"
cron_job_command   = ["/bin/sh", "-c", "date; echo Hello from the Kubernetes cluster"]
