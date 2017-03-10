def systeminfo
        Chef::Log.debug "Looking for systeminfo for node #{node.name}"
        nodename = data_bag('listdb')
        Chef::Log.debug "All nodename: #{nodename.inspect}"
        nodename = nodename.map do [itemlist]
                nodename = data_bag_item('listdb', itemlist)
                Chef::Log.debug "listdb #{itemlist}: #{nodename}"
                nodename['node'] == node.name ? nodename : ni
        end.compact

if Chef::Config[:solo]
  Chef::Log.warn('This recipe uses search. Chef Solo does not support search.')
else
  nodename = search(:systeminfo, "id:#{node.name}")
  Chef::Log.info "Found #{nodename.count} databags for node:#{node.name}"
  nodename
end
end
