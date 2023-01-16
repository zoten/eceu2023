---
layout: default
---

# Names

<p class="text-xs">
Erlang gives names to each of the nodes to be able to locate and contact them.

Names are in the form `Name@Host`, where the *host* is based on available *DNS* entries, either over the network or in your computer's host files (e.g. `/etc/hosts` in Unix-likes).
</p>


<div class="grid grid-rows-4">

<!-- row -->
<div class="grid grid-cols-2">

<div>

``` erlang
net_kernel:connect_node(NodeName). % > true
```

</div>

<div>

``` elixir
:net_kernel.connect_node(nodename) # > true
Node.connect(nodename)             # > true

```

</div>

</div>

<!-- row -->
<div class="grid grid-cols-2">

<div>

``` erlang
net_adm:ping(NodeName). % > Pong
```

</div>

<div>

``` elixir
:net_adm.ping(nodename) # > :pong
```

</div>

</div>

<!-- row -->
<div class="grid grid-cols-2">

<div>

``` erlang
erlang:disconnect_node(NodeName). % > true
```

</div>

<div>

``` elixir
:erlang.disconnect_node(nodename) # > true
```

</div>

</div>

<!-- row -->
<div class="grid grid-cols-2">

<div>

``` erlang
erlang:monitor_node(NodeName, true). % > true
```

</div>

<div>

``` elixir
:erlang.monitor_node(nodename, true) # > true
```

</div>

</div>

</div>

---
layout: default
---

# name vs sname

<p class="text-xs">

 * Long names are based on fully qualified domain names (`aaa.bbb.ccc`), and many DNS resolvers consider a domain name to be fully qualified if they have a period (`.`) inside of it.

 * Short names are based on host names without a period, and are resolved going through your host file or through any available *DNS* entry.

</p>

<p class="text-xs">

Because of this, it is generally easier to set up a bunch of Erlang nodes together on a single computer using *short names* than *long names*. One last thing: because names need to be unique, nodes with short names cannot communicate with nodes that have long names, and the opposite is also true.

Note that you can also start nodes with only the names: 

<div class="grid grid-cols-2">

<div>

``` bash
erl -sname short_name
```

</div>
<div>

``` bash
erl -name long_name
```
</div>

</div>

Erlang will automatically attribute a host name based on your operating system's configuration. You also have the option of assigning a chosen IP starting a node with a name such as 

``` bash
erl -name name@127.0.0.1
```
</p>
