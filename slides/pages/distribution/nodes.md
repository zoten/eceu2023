# Nodes

<div class="grid grid-cols-2">

<div class="text-sm">

 * Erlang/OTP tries to give basic building blocks of distribution
   * distribution is hard, there's no *one fits all* solution
 * An Erlang(/Elixir) Node is an instance of the Erlang VM (BEAM)
 * A Node is assigned a name that must be unique in a *cluster*
 * The most common *name server* for OTP is a process called *epmd* [^1]
   * maps symbolic node names (`node@host`) to machine addresses
   * started automatically by `erl` (unless already started or differently specified)
   * multiple existing implementations
 * [^2]

</div>


<div>
<img src="/epmd.png">
</div>
</div>

[^1]: See more at [Erlang Documentation - epmd](https://www.erlang.org/doc/man/epmd.html)
[^2]: A lot more at [Learn You Some Erlang for Greater Good - distribunomicon](https://learnyousomeerlang.com/distribunomicon)

<style>
.footnotes {
  @apply text-sm opacity-75;
}
.footnote-backref {
  display: none;
}
</style>
