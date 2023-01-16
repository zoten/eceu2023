---
layout: default
---

# Connection

<p class="text-xs">

Cookies are a mechanism used to divide clusters of nodes in a same machine, not an authentication mechanism.

``` bash
erl -sname ratchet@ratchet0 -setcookie 'supersecretcookie'
iex --sname ratchet@ratchet0 --setcookie 'supersecretcookie'
```

</p>

<div class="grid grid-cols-2">

<div>

``` erlang
erlang:set_cookie(node(), ultrasecretcookie).
```

</div>

<div>

``` elixir
:erlang.set_cookie(node(), :ultrasecretcookie).
```

</div>

</div>

## Hidden nodes

<p class="text-xs">

Sometimes you want to just connect to a single node in a cluster and poke around a couple of things, without alarming anyone

</p>

<div class="grid grid-cols-2">

<div>

``` bash
erl -sname ninja -hidden
```

</div>

<div>

``` bash
iex --sname ninja --hidden
```

</div>

</div>

``` elixir
Node.list()           # will not show `ninja` in any node
Node.list(:hidden)    # will show `ninja` on connected node, and connected node in `ninja`
Node.list(:connected) # will show all nodes from the calling node's point of view
Node.list(:known)     # will show also past nodes
```
