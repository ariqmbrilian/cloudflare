resource "cloudflare_record" "http_app" {
  zone_id = var.zone_id
  name    = "app"
  value   = "${var.tunnel_id}.cfargotunnel.com"
  type    = "CNAME"
  proxied = true
}


resource "cloudflare_tunnel_config" "example_config" {
  account_id = var.account_id
  tunnel_id  = var.tunnel_id

  config {
    ingress_rule {
      hostname = "app.${var.zone_name}"
      service  = "http://nginx:80"
    }
    ingress_rule {
      service = "http_status:404"
    }
  }
}