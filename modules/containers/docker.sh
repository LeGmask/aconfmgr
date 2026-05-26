AddPackage docker # Pack, ship and run any application as a lightweight container
AddPackage docker-buildx # Docker CLI plugin for extended build capabilities with BuildKit
AddPackage docker-compose # Fast, isolated development environments using Docker

IgnorePath /etc/cni/\*
IgnorePath /opt/containerd/\*
IgnorePath /var/lib/containerd/\*
IgnorePath /var/lib/docker/\*

getent group docker >/dev/null && sudo usermod -aG docker $USER
