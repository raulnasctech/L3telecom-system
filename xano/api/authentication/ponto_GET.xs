// Query all ponto records
query ponto verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $ponto
  }

  response = $ponto
  guid = "ZNON9T0q1piXxsFLb7IBnpcZ8Gs"
}