// Query all admissao_demissao records
query admissao_demissao verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $admissao_demissao
  }

  response = $admissao_demissao
  guid = "mobO0OVcEcJVBn83Nu2P0i1VMy0"
}