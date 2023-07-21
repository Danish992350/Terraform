module "mywebserver" {
  source = "./modules/webserver"
  machine_type = "${var.machine_type}"
  image = "${var.image}"
}
