# aza_fx_service

NOTE: Customers with ID's 1 - 20 are pre-loaded with the service for convenience. 

## Installation and Running

### Regular way

```bash
git clone <repo>
cd aza_fx_service
rails db:create db:migrate 
rails db:seed
rails s

```

### With Docker

```bash
git clone <repo>
cd aza_fx_service

docker-compose pull &&
docker-compose build web &&
docker-compose run --rm web bash -c '
  bin/wait-for-services &&
  (bundle check || bundle install) &&
  bundle exec rails db:drop &&
  bundle exec rails db:create &&
  bundle exec rails db:migrate &&
  bundle exec rails db:seed &&
  rm -rf tmp/latest.dump
' &&
docker-compose up
```

### Run tests

```bash
bundle exec rspec
```

### Sample Request (POSTMAN)

```JSON

```

### Sample Response 


## Notes

### Dependencies

### Assumptions/TODO/OTHER

- Fixed number of known/supported currencies: validate
- Amounts: greater than 0, within a predefined range
- transacted_at in addition to created at: assumes queued transactions from external system
- namespace and version api
- test coverage reports- 
