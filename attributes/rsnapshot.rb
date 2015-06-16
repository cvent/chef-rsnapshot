default['rsnapshot']['root'] = '/u/backup/snapshots'

default['rsnapshot']['intervals'] = {
  'hourly' => 6,
  'daily' => 7,
  'weekly' => 4
}

default['rsnapshot']['verbosity'] = 2
default['rsnapshot']['loglevel'] = 3
