default[:redis]                 = {}
default[:redis][:bind_address]  = '0.0.0.0'
default[:redis][:port]          = 6379
default[:redis][:timeout]       = 300
default[:redis][:version]       = '2.2.4'
default[:redis][:prefix]        = '/usr/local'
default[:redis][:user]          = 'redis'
default[:redis][:datadir]       = '/vol/redis'
default[:redis][:log_level]     = 'notice'
default[:redis][:log_file]      = '/var/log/redis/redis.log'
default[:redis][:pid_file]      = '/var/run/redis.pid'
default[:redis][:dump_file]     = 'dump.rdb'
default[:redis][:appendonly]    = 'yes'
default[:redis][:aofile]        = 'appendonly.aof'
default[:redis][:appendfsync]   = 'everysec'
default[:redis][:vm_max_memory] = '385875968'
default[:redis][:vm_page_size]  = '32'
default[:redis][:vm_pages]      = '134217728'

# save/vm settings, allow overriding from scalarium/upstream
set_unless[:redis][:vm]   = 'no'
set_unless[:redis][:save] = false

# master-slave configuration, allow overriding from scalarium/upstream
set_unless[:redis][:master]            = {}
set_unless[:redis][:master][:address]  = 'darth-vader'
set_unless[:redis][:master][:port]     = 6379
set_unless[:redis][:master][:password] = 'foobar'
set_unless[:redis][:is_slave]          = false
