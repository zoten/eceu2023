# Mesh

<div class="grid grid-cols-2">

<div class="text-sm">

 * When two nodes connect, they start monitoring each other
 * When a node connects to another that is already part of a group, that node connects to the entire group
   * every node still keeps its own set of loaded modules, applications, supervision trees etc
 * The good: everyone gets to talk to everyone. Super fault tolerant!
 * The bad: connections and chatters grows exponentially with the number of nodes

</div>

<div class="flex justify-center">
    <img src="/mesh.png" class="h-80 align-center">
</div>

</div>
