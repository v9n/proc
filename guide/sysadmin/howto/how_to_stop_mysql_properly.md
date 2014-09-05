# How to Safetly Restart Your MySQL Slave Server

To avoid data corruption, follow thess steps:

0. Make sure no one has access to it any more.
1. Stop slave replication
2. Flush all data out
3. Stop mysqld daemon

At any steps, troubleshoot the result

## Command:

In mysql client do: 

```
STOP SLAVE;
FLUSH TABLES;
``

in command line do: 
```
/etc/init.d/mysql stop
```


# Start it again

in command line do:

```
 /etc/init.d/mysql start
```

In mysql client do:

```
START SLAVE;
``` 

In mysql client do:

```
 SHOW SLAVE STATUS\G
```

Check for IO slave running, secodn be hind master. If no or null, please
fix

MySQL will stop whenever an error query occurs.
Someties, we can get some error because a bad replication and the table
is locked. We can skip the table, and just force to the new replacation:


```
SET GLOBAL SQL_SLAVE_SKIP_COUNTER=1; START SLAVE;
```

Only do this if we are sure that skipping that error query won't cause
any inconsitent data. We can increase the counter if it has many query
like that.


