# Difference_Sets-utilities
various utilities for difference sets

== TO DO ==

1) none

== THEORY ==

1) A difference set is defined using 3 parameters (v,k,l), where v is the order of the original group, k is the order of the difference set, and l number of ways you can represent each element in the difference set. There is a relation between all three parameters: k(k-1)=l(v-1). Given the order of the group, one can find potential candidates for difference sets by isolating v.

2) One only needs to check for parameters up to half of the order of the group. This is because there is a symmetric property of difference sets within groups, there is always a complimentary difference set.

== EXAMPLE ==
1) none

== NOTES ==
1) The only input is a single variable v, the output is a possible collection of values of v and l that satisfy the above relation.

2) There is no guarentee that a difference set exists for the given parameters, but candidates are a good place to start an investigation.

== COMPILING ==

1) none needed, only a working copy of Matlab is required.
