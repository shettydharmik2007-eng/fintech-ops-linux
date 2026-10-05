# Fintech Ops Linux Administration

## Tasks Completed

1. Multi-user environment
   - Created `fintech_ops` group
   - Configured shared deployment directory
   - Configured restricted systemctl sudo commands

2. Process Monitoring
   - Simulated high CPU process using `yes`
   - Used `ps`, `top`, and `htop`
   - Traced parent-child process relationship
   - Safely terminated the rogue process

3. Bash Automation
   - Monitors disk usage
   - Monitors memory usage
   - Creates timestamped logs
   - Compresses logs older than 7 days

4. Cron Automation
   - Runs monitoring script every weekday at midnight
   - Redirects standard output and errors to a dedicated log

## Technologies

- Ubuntu Linux
- Bash
- systemd
- sudo
- cron
- ps
- top
- htop
- gzip
