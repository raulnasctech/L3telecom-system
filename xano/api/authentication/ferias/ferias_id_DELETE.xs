// Delete ferias record.
query "ferias/{ferias_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int ferias_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.ferias_id
    }
  }

  response = null
  guid = "AlVgQIw9mDARcrag6dyttwBSbXs"
}