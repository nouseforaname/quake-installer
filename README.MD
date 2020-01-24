### You'll need direnv and git, or you're going to have a bad time.
this repo assumes you have direnv as well as git configured and running properly. Run `direnv allow`in this repository to make your life easier. Else you will have to `source .envrc` for the rest of the scripts to work


### edit .awsrc with your creds and region
### edit configs/settings.rc 
and provide your QUAKE_TLD and your QUAKE_CLUSTER_NAME. This will be used to create certs, a hosted zone and a few other things. you can take care of delegating DNS with your provider after you are past the bootstrap (terraform) step.

### run 
```direnv allow```

### shoot 
```installers/quake --install``` 
to install all required clis into the bin dir of this repo. 

### pick up health
```installers/quake --bootstrap```
To run terraform and manipulate the outputs into config files

### finish level
to interpolate and deploy the provided kops cluster template with defaults and terraform outputs. It will save a full cluster config and a cluster vars YAML into the state directory.

```installers/quake --deploy```
You can add ```--jumphost``` to also deploy an instance group of jumphosts for ssh access to your vpc

to play with KOPS TF feature, you can use 
```ìnstallers/quake --deploy -o tf``` it will instead create the `kops-terraform-output` folder and save generated TF there instead of using the KOPS cli to deploy everything.

### you should now have a kubernetes cluster up and running 

The next step is adding automation and a few platform components.
### Deploy ArgoProj (ArgoCD, ArgoEvents, ArgoWorkflows, ArgoRollouts), External-DNS, and Ingress via HELM
```installers/quake --loadout```
### Template & Register Quake System HELM Applications via with argo KubeCTL
```installers/quake --template```
### Create an example workflow
```installers/quake --workflow```

###
### Delete Cluster
Remove KOPS Related Resources
```installers/quake --delete```

### Purge TF
Remove TF Related Resources
```installer/quake --purge``` 

