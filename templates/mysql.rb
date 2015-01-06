Eye.application 'mysql' do
  working_dir '/'
  stdall '/var/log/eye/mysql-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :mysql do
    pid_file '/var/run/mysql-eye.pid'
    start_command 'mysqld_safe'

    daemonize true
    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
