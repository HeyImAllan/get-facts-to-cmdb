docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /tmp/$(mktemp -d):/run -p 2022:22 local/c-systemd-ansible
