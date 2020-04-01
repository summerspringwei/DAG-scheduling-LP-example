Minimize
    value: tt

Subject To
    \ We convert the binary quadratic optimization problem to big-100 form
    \ c_d_i_j convertion overhead on device d from node i to node j
    tt + 100 s_1_1 >= 0
    tt - t_1_1 - 100 s_1_1 >= -99
    tt + 100 s_2_1 >= 0
    tt - t_2_1 - 100 s_2_1 >= -99
    tt + 100 s_1_2 >= 0
    tt - t_1_2 - 101 s_1_2 + s_1_1 >= -98
    tt + 100 s_2_2 >= 0
    tt - t_2_2 - 101 s_2_2 + s_2_1 >= -98
    tt + 100 s_1_3 >= 0
    tt - t_1_3 - 100 s_1_3 >= -97
    tt + 100 s_2_3 >= 0
    tt - t_2_3 - 100 s_2_3 >= -97
    
    \ Nodes are only executed once
    s_1_1 + s_2_1 = 1
    s_1_2 + s_2_2 = 1
    s_1_3 + s_2_3 = 1

    \ Only one op can be executed on one device
    \ (node 2 and 3)
    t_1_3 - t_1_2 + 100 u_1_2_3 - s_1_2 + s_1_1 >= 2
    t_1_2 - t_1_3 - 100 u_1_2_3 >= -97
    t_2_3 - t_2_2 + 100 u_2_2_3 - s_2_2 + s_2_1 >= 2
    t_2_2 - t_2_3 - 100 u_2_2_3 >= -97
    \ (node 1 and 3)
    t_1_3 - t_1_1 + 100 u_1_1_3 >= 1
    t_1_1 - t_1_3 - 100 u_1_1_3 >= -97
    t_2_3 - t_2_1 + 100 u_2_1_3 >= 1
    t_2_1 - t_2_3 - 100 u_2_1_3 >= -97
    \ (node 1 and 2) For parent node and child node
    t_1_2 - t_1_1 >= 1
    t_2_2 - t_2_1 >= 1

    \ Constraints of DAG
    t_1_2 - t_2_1 >= 1
    t_2_2 - t_1_1 >= 1

    \ Start time is grater than 0
    t_1_1 >= 0
    t_1_2 >= 0
    t_1_3 >= 0
    t_2_1 >= 0
    t_2_2 >= 0
    t_2_3 >= 0

Binary
    s_1_1
    s_1_2
    s_1_3
    s_2_1
    s_2_2
    s_2_3
    u_1_2_3
    u_2_2_3
    u_1_1_3
    u_2_1_3

End
