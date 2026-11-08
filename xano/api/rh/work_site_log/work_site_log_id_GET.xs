// Get work_site_log record
query "work_site_log/{work_site_log_id}" verb=GET {
  api_group = "rh"

  input {
    int work_site_log_id? filters=min:1
  }

  stack {
    db.get work_site_log {
      field_name = "id"
      field_value = $input.work_site_log_id
    } as $work_site_log
  
    precondition ($work_site_log != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $work_site_log
  guid = "aq1RXwWHR8rfCZepNZGuha8rHpQ"
}