// Query all work_site_log records
query work_site_log verb=GET {
  api_group = "rh"

  input {
  }

  stack {
    db.query work_site_log {
      return = {type: "list"}
    } as $work_site_log
  }

  response = $work_site_log
  guid = "Ht2ad1ZlAuqx5HxVhoiJhKHv4H8"
}