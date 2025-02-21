resource "newrelic_entity_tags" "dashboard_tags" {
  for_each = newrelic_one_dashboard.fgs_dashboard

  guid = each.value.guid

  tag {
    key    = "origin"
    values = ["terraform"]
  }
}
