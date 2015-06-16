case node['platform']
when 'centos'
  include_recipe 'yum-epel'
end

package 'rsnapshot'
