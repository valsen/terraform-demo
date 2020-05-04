provider "google" {
  credentials = file("<google-service-account-key-here>")
  project = "pelagic-campus-276207"
  region  = "europe-north1"
  zone    = "europe-north1-a"
}

resource "google_cloud_run_service" "default" {
  name     = "demo"
  location = "europe-north1"

  template {
    spec {
      containers {
        image = "gcr.io/<project-id>/<image-name>:latest"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.default.location
  project     = google_cloud_run_service.default.project
  service     = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
}