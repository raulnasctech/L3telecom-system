// Edit RH record
query "rh/{rh_id}" verb=PATCH {
  api_group = "rh"

  input {
    int rh_id? filters=min:1
    dblink {
      table = "RH"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch RH {
      field_name = "id"
      field_value = $input.rh_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $rh
  }

  response = $rh
  guid = "6NfE-yF3Mk54DGTLqEKynNs-pZo"
}