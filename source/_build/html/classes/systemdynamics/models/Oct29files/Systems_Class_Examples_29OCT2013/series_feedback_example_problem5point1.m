sys1=tf(1,[1 0])

sys2=feedback(sys1,tf(4,1),+1)

sys3=series(tf(6,1),sys2)

sys4=feedback(sys3,tf(1,1))