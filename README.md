**Application**

Home Assistant Add-on for UnRaid Docker : Whisper

**Description**

Home Assistant add-on that uses [faster-whisper](https://github.com/guillaumekln/faster-whisper/) for speech-to-text.

Part of the [Year of Voice](https://www.home-assistant.io/blog/2022/12/20/year-of-voice/).

**Build notes**

Based on official [Home Assistant Add-on: Whisper](https://github.com/home-assistant/addons/tree/master/whisper)

**Usage**
```
docker run -d \
    -p 10300:10300 \
    --name=<container name> \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    lexyan/arch-whisper
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:10300`

**Example**
```
docker run -d \
    -p 10300:10300 \
    --name=ha-whisper \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    lexyan/arch-whisper
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate the work, then please consider buying binhex a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](http://forums.unraid.net/index.php?topic=45842.0)