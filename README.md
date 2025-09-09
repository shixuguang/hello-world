# hello-world

#### deploy using cpd-cli
```
    cpd-cli manage create-gitapp-application --cpd_instance_ns=zen 
          --app_name=hello-world  
          --app_port=8443
          --repo_url=https://github.com/shixuguang/hello-world.git
          --cpu=400m
          --memory=200Mi
          --cpu_limit=500m
          --memory_limit=400Mi

    command returns application run id
```

* application available at `curl -k https://<zen-route>/physical_location/<default-physical-location-name>/<application-name>-<application-run-id>/hello-world`