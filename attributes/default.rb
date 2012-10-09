#
# Cookbook Name:: haproxy
# Default:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['haproxy']['incoming_port']           = "80"
default['haproxy']['enable_admin']            = true
default['haproxy']['balance_algorithm']       = "roundrobin" 
default['haproxy']['x_forwarded_for']         = false
default['haproxy']['enable_ssl']              = false
default['haproxy']['ssl_incoming_port']       = "443"
default['haproxy']['member_max_connections']  = "100"

# Set the `cookie_insert` to a string if you want load balancing 
# based on cookie insertion
default['haproxy']['cookie_insert'] = nil

# Set the `cookie_prefix` to a string if you want to use
# cookie prefixing; this cookie will be set on every request and
# will be prefixed with the server name.
default['haproxy']['cookie_prefix'] = nil 

# See the docs for more info on cookie insertion and prefixing:
# http://haproxy.1wt.eu/download/1.3/doc/architecture.txt

# A list  containing HAProxy backend server
# configuration details. These should be 
# overridden in a role or environment.
default['haproxy']['backend_servers'] = [
  "hostname"        => "app0",
  "ipaddress"       => "0.0.0.0",
  "port"            => "8080",
  "proxy_weight"    => 1,
  "max_connections" => 100,
  "ssl_port"        => 443
]
