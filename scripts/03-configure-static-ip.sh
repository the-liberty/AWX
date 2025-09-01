sudo nano /etc/netplan/

network:
  version: 2
  ethernets:
    ens33:
      dhcp4: false
      addresses:
        - 10.0.0.10/24
      nameservers:
        addresses:
          - 10.0.0.2
      routes:
        - to: default
          via: 10.0.0.2

sudo nano /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg
network: {config: disabled}

sudo apt update
sudo apt install openvswitch-switch
sudo systemctl enable --now openvswitch-switch

sudo netplan apply
