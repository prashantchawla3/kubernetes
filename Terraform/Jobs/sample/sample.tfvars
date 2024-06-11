job_name           = "demo"
container_name     = "pi"
container_image    = "perl"
container_command  = ["perl", "-Mbignum=bpi", "-wle", "print bpi(2000)"]
restart_policy     = "Never"
backoff_limit      = 4
job_timeout_create = "2m"
job_timeout_update = "2m"
