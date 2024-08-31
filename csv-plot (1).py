import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

data = np.genfromtxt("quad.csv", delimiter=" ", names=["x", "y"])
plt.xlabel('x ',color ='blue',fontstyle='italic',fontweight ='bold',fontsize =18)
plt.ylabel("y",color ='blue',fontstyle='italic',fontweight ='bold',fontsize =18)
plt.title("Quaderatic graph",color ='red',fontname='Times New Roman',fontstyle='italic',fontweight ='bold',fontsize =22)
plt.plot(data['x'], data['y'], marker = 'o',lw =2,color='green')
ax=plt.gca()
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.spines['bottom'].set_position(('data',0))
ax.yaxis.set_ticks_position('left')
ax.spines['left'].set_position(('data',0))
plt.annotate('local minimum',xy=(0,0),xytext=(2,1),arrowprops=dict(facecolor='red'))
plt.legend(["$y=x^2$"],loc='lower left')
plt.savefig('plot-csv.png')
plt.show()
