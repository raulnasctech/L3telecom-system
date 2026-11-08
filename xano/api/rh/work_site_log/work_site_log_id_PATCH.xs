// Edit work_site_log record
query "work_site_log/{work_site_log_id}" verb=PATCH {
  api_group = "rh"

  input {
    int work_site_log_id? filters=min:1
    dblink {
      table = "work_site_log"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch work_site_log {
      field_name = "id"
      field_value = $input.work_site_log_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $work_site_log
  }

  response = $work_site_log
  guid = "URznUMqT1i7Xag3KeL3yU1XS_Fk"
}