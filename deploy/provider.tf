terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  token     = "y0_AgAAAABAXyrBAATuwQAAAADRYyRM84_OBp4jS3qzHVbVUIT2qlyLzlk"
  cloud_id  = local.cloud_id
  folder_id = local.folder_id
  zone      = local.zone
}

locals {
  cloud_id  = "b1ge32nfqaa79q02sin5"
  folder_id = "b1ghbrp8fpp59522per5"
  zone      = "ru-central1-a"
}