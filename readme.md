AppGen
==========
**AppGen** generates and serves big apps for New York City's Big Apps
competition.

## Architecture
AppGen is divided into four major parts, each of which is a submodule
of the present repository. They are listed below in the order by which
data pass through them.

    1. Storeroom
    2. Kitchen
    3. Menu
    4. Delivery

Each major part contains more git submodules. We divide these submodules
into *input* and *output* submodules. A major part edits the contents of
its output submodules. The following major part includes this output
submodule as an input submodule. Each major part can be checked out
independently of the present repository. The structure of the submodules
enforces the immutability of data.


