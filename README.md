# MAVLink Router Daemon on Docker

Launch using:

```bash
docker run -it --rm royratcliffe/mavlinkrouter -h
```
```
mavlink-routerd [OPTIONS...] [<uart>|<udp_address>]

  <uart>                       UART device (<device>[:<baudrate>]) that will be routed
  <udp_address>                UDP address (<ip>:<port>) that will be routed
                               ('server' mode)
  -e --endpoint <ip[:port]>    Add UDP endpoint to communicate. Port is optional
                               and in case it's not given it starts in 14550 and
                               continues increasing not to collide with previous
                               ports. 'normal' mode
  -p --tcp-endpoint <ip:port>  Add TCP endpoint client, which will connect to given
                               address
  -r --report_msg_statistics   Report message statistics
  -t --tcp-port <port>         Port in which mavlink-router will listen for TCP
                               connections. Pass 0 to disable TCP listening.
                               Default port 5760
  -c --conf-file <file>        .conf file with configurations for mavlink-router.
  -d --conf-dir <dir>          Directory where to look for .conf files overriding
                               default conf file.
  -l --log <directory>         Enable Flight Stack logging
  -g --debug-log-level <level> Set debug log level. Levels are
                               <error|warning|info|debug>
  -v --verbose                 Verbose. Same as --debug-log-level=debug
  -V --version                 Show version
  -s --sniffer-sysid           Sysid that all messages are sent to.
  -h --help                    Print this message
```
