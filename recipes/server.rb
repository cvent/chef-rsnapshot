include_recipe 'rsnapshot::default'

template '/etc/rsnapshot.conf' do
  source 'rsnapshot.conf.erb'
end

node['rsnapshot']['intervals'].keys.each do |period|
  cron "rsnapshot-#{period}" do
    time period.intern
    command "rsnapshot #{period}"
  end
end
