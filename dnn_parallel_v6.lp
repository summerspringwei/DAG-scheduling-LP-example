Minimize
    value: tt

Subject To
    \ tt is the end time
    \ and we convert the binary quadratic optimization problem to big-M form
    \ therefore the problem become a linear programing 
    \ tt - t_1_2 + 100 (1 - s_1_2 ) - (1 - s_1_1*s_1_2) * c_1_2 > 2
    \ tt - t_1_2 + 100 (1 - s_1_2 ) - (1 - z) * c_1_2 > 2
    \ bound z <= s_1_1, z <= s_1_2, z >= s_1_1 + s_1_2 - 1
    \ Execute node 1 on device 1 
    tt + 100 s_1_1 >= 0
    tt - t_1_1 + 100 (1 - s_1_1) >= 1
    tt + 100 s_2_1 > 0
    tt - t_2_1 + 100 (1 - s_2_1) >= 1
    
    \ Execute node 2 on device 2 (from device 1)
    tt + 100 s_2_2 > 0
    tt - t_2_2 + 100 (1 - s_2_2) - z2_1_2 >= 3
    z2_1_2 - s_1_1 <= 0
    z2_1_2 - s_2_2 <= 0
    z2_1_2 - s_1_1 - s_2_2 >= 1
    \ Execute node 2 on device 1 (from device 2)
    tt + 100 s_1_2 > 0
    tt - t_1_2 + 100 (1 - s_1_2) - z2_2_1 >= 3
    z2_2_1 - s_2_1 <= 0
    z2_2_1 - s_1_2 <= 0
    z2_2_1 - s_2_1 - s_1_2 >= 1

    tt + 100 s_1_3 > 0
    tt - t_1_3 + 100 (1 - s_1_3) >= 3
    tt + 100 s_2_3 > 0
    tt - t_2_3 + 100 (1 - s_2_3) >= 3

    \ Node 2 is started after node 1 is finished
    t_1_2 - t_1_1 > 1
    t_2_2 - t_2_1 > 1
    t_1_2 - t_2_1 > 1
    t_2_2 - t_1_1 > 1
    \ Nodes are only executed once
    s_1_1 + s_2_1 = 1
    s_1_2 + s_2_2 = 1
    s_1_3 + s_2_3 = 1
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
    z2_2_1
    z2_1_2

End
