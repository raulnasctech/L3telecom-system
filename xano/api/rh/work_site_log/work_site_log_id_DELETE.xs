// Delete work_site_log record.
query "work_site_log/{work_site_log_id}" verb=DELETE {
  api_group = "rh"

  input {
    int work_site_log_id? filters=min:1
  }

  stack {
    db.del work_site_log {
      field_name = "id"
      field_value = $input.work_site_log_id
    }
  }

  response = null
  guid = "lQX0ndYV1bZVBy_pMJLP9JYEfH4"
}