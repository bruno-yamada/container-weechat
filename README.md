# Container Image for using weechat

The container will keep a running process with `tail -f /dev/null`

You can enter the container with `docker exec -it weechat sh`

And connect from there

Add server to Weechat:
```
/server add NAME HOST/PORT -password=PASS -nicks=NICK -username=USER
```
Connect:
```
/connect NAME
```
Save settings(don't forget to save):
```
/save
```

[Refer my notes on weechat for more](https://github.com/bruno-yamada/bruno-yamada/blob/master/notes/weechat.md)
