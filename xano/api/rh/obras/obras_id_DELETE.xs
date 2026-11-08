// Delete Obras record.
query "obras/{obras_id}" verb=DELETE {
  api_group = "rh"

  input {
    int obras_id? filters=min:1
  }

  stack {
    db.del Obras {
      field_name = "id"
      field_value = $input.obras_id
    }
  }

  response = null
  guid = "6oQYpDk8njd2SMvVftfyTHDU2JY"
}