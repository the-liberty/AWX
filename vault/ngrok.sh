sudo nano /etc/systemd/system/ngrok.service


[Unit]
Description=Ngrok HTTP Tunnel
After=network.target

[Service]
ExecStart=/snap/bin/ngrok http --url=formerly-select-lizard.ngrok-free.app 32000
Restart=on-failure
User=TWÓJ_UŻYTKOWNIK
WorkingDirectory=/home/TWÓJ_UŻYTKOWNIK
Environment=NGROK_AUTHTOKEN=TWÓJ_TOKEN_NGROK

[Install]
WantedBy=multi-user.target



sudo systemctl daemon-reload
sudo systemctl enable ngrok.service
sudo systemctl start ngrok.service

sudo systemctl status ngrok.service
