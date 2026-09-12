# Known Issues
sudo sysctl -w net.ipv4.conf.default.rp_filter=2
sudo sysctl -w net.ipv4.conf.all.rp_filter=2


echo /
net.netfilter.nf_conntrack_max = 1048576/
net.netfilter.nf_conntrack_tcp_timeout_established = 600/
net.netfilter.nf_conntrack_tcp_timeout_time_wait = 30
>> /etc/sysctl.d/99-conntrack.conf

# /etc/sysctl.d/99-network-tuning.conf ---- THIS IS A HUGE ISSUE
net.core.netdev_max_backlog = 30000
net.core.rmem_max = 134217728
net.core.wmem_max = 134217728
net.ipv4.tcp_rmem = "10240 131072 134217728"
net.ipv4.tcp_wmem = "10240 131072 134217728"
net.ipv4.tcp_congestion_control = bbr
net.core.default_qdisc = fq
net.ipv4.tcp_mtu_probing = 1
net.ipv4.tcp_fastopen = 3
net.ipv4.tcp_tw_reuse = 1
net.ipv4.ip_local_port_range = 10000 65535
net.netfilter.nf_conntrack_tcp_timeout_time_wait = 60
