// Add work_site_log record
query work_site_log verb=POST {
  api_group = "rh"

  input {
    dblink {
      table = "work_site_log"
    }
  }

  stack {
    db.add work_site_log {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $work_site_log
  }

  response = $work_site_log
  guid = "ZMZribnj9Z-pfgxEj_M4wooRuVI"
}