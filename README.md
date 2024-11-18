# LCD Screen operation for QNAP NAS

## Pre Init

```bash
sudo cp root/startup.sh /root/
$ crontab -e
```

Add following line
```bash
@reboot  /root/startup.sh
```

## Pre Shutdown

```bash
sudo cp root/pre-shutdown.sh /root/
sudo cp etc/systemd/system/lcd_shutdown.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable lcd_shutdown.service
sudo systemctl start lcd_shutdown.service
sudo systemctl status lcd_shutdown
```

Or simply put `root/pre-shutdown.sh` to `/etc/rc6.d/` and name it to `K99-lcd-pre-shutdown.sh`

