# hhvm-stats
This is an HHVM-ready port of http://php.net/manual/en/book.stats.php. To build, use the standard build procedure for Zend extensions:

```
$ hphpize
$ cmake .
$ make
```

Then install it somewhere central:

```
$ EXTDIR=/etc/hhvm/ext
$ sudo mkdir -p $EXTDIR
$ sudo cp ./stats.so $EXTDIR
```

...and modify your `/etc/hhvm/php.ini` to pick it up and enable Zend compat:

```
extension_dir=/etc/hhvm/ext
hhvm.extensions[extension_name]=stats.so 
hhvm.enable_zend_compat = 1
```

To test that things worked as expected:

```
$ hhvm -a
Welcome to HipHop Debugger!
...
hphpd> =extension_loaded('stats')
=extension_loaded('stats')
true
hphpd> =stats_skew([1,2,4])
=stats_skew([1,2,4])
0.38180177416061
```
