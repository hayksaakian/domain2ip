# Domain 2 IP

## This site tells you the IP address of a given domain or host

```
http://domain2ip.net/google.com
```

### will use Ruby to do
```
IPSocket.getaddress("google.com")
```

### and should return something like:
```
173.194.33.4
```
-----
## More examples:
1. [http://domain2ip.net/http://apple.com]("http://domain2ip.net/http://apple.com")
2. [http://domain2ip.net/http://microsoft.com]("http://domain2ip.net/http://microsoft.com")
3. [http://domain2ip.net/http://amazon.com]("http://domain2ip.net/http://amazon.com")

-----
by [Hayk Saakian](http://twitter.com/hayksaakian)

pull requests are welcome.