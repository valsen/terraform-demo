# Terraform demo: webapp in Google Cloud Run

This repository contains the source code files used for the demo video which can be viewed here: https://youtu.be/i0Gb4mda5Dw

## Contents
- `main.go` and `go.mod`: the actual helloworld web application written in golang
- `Dockerfile`: configuration to run the app in a docker container
- `main.tf`: the Terraform configuration file

## Get started
If you want to reproduce the actions performed in the screencast, you must have:
- [Terraform](https://www.terraform.io/) and [gcloud cli tool](https://cloud.google.com/sdk/gcloud/) installed on your machine
- a [Google Cloud](https://cloud.google.com/) account with credits on it (we are using for the video the free credits given when you create an account)

Then you should:
- create a new Google Cloud project
- enable Cloud Run Api and Container Registery Api in this project
- create a service account with appropriate permissions (we are using the 'Owner' role but it can be fine tuned)
- export the credentials for this service account in a .json file

## Authors
Victor Josephson (@valsen)\
Maël Madon (@Mema5)

## Links to relevant resources
- [Google cloud run service in Terraform documentation](https://www.terraform.io/docs/providers/google/r/cloud_run_service.html)
- [Google cloud with terraform: tutorial](https://cloud.google.com/community/tutorials/getting-started-on-gcp-with-terraform)