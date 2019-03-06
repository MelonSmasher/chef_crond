# chef_crontab

Configures crontab through Chef attributes.

# Usage

### chef_crontab::default

Just include `chef_crontab::default` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef_crontab]"
  ]
}
```

## Attributes 

##### Note: see `attributes/` for all attributes.

### Entries:

Default Value: 

- `[]`

Ruby usage:

```ruby
node['chef_crontab']['entries'] = [
  {
    "name" => "RunSomeScriptFriday2AM",
    "user" => "SomeUser",
    "shell" => "/bin/bash",
    "minute" => "00",
    "hour" => "02",
    "weekday" => "5",
    "command" => "/path/to/script.sh",
    "action" => :create
  }
]
```

JSON usage:

```json
{
  "chef_crontab": {
    "entries": [
        {
          "name": "RunSomeScriptFriday2AM",
          "user": "SomeUser",
          "shell": "/bin/bash",
          "minute": "00",
          "hour": "02",
          "weekday": "5",
          "command": "/path/to/script.sh",
          "action": "create"
        }
    ]
  }
}
```

Both examples will add an entry to `SomeUser`'s crontab that runs `/path/to/script.sh` in bash at 2:00 AM on Fridays.

