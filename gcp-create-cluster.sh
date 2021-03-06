gcloud beta container --project "bold-gadget-222718" clusters create "standard-cluster-1" \
    --zone "us-central1-a" \
    --no-enable-basic-auth \
    --cluster-version "1.13.6-gke.6" \
    --machine-type "custom-1-2048" \
    --image-type "UBUNTU" \
    --disk-type "pd-standard" \
    --disk-size "20" \
    --metadata disable-legacy-endpoints=true \
    --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" \
    --preemptible \
    --num-nodes "3" \
    --enable-cloud-logging \
    --enable-cloud-monitoring \
    --no-enable-ip-alias \
    --network "projects/bold-gadget-222718/global/networks/default" \
    --subnetwork "projects/bold-gadget-222718/regions/us-central1/subnetworks/default" \
    --addons HorizontalPodAutoscaling,HttpLoadBalancing \
    --no-enable-autoupgrade \
    --no-enable-autorepair
    
