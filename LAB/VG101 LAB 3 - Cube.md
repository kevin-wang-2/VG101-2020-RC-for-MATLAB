# VG101 LAB 3 - Cube

LAB3 is a simple introduction to computer graphics. In this lab, the input is a 3×3 matrix, named A, and your program should output corresponding picture in the command window. The input lays in a txt file named ”input.txt”, the matrix will be formed as:

```
A=[1 2 3
4 5 6
7 8 9]
```

There are some examples:

**Input 1**
$$
A = \left[\begin{matrix}1 & 0 & 0\\0 & 0 & 0\\0 & 0 & 0\end{matrix}\right]
$$
**Output 1**

                 +----------+
                /          /|
               /          / |
              +----------+  |
              |          |  +
              |          | / 
              |          |/  
              +----------+   
**Input 2**
$$
A = \left[\begin{matrix}1 & 2 & 3\\0 & 0 & 0\\0 & 0 & 0\end{matrix}\right]
$$
**Output 2**

                                       +----------+
                                      /          /|
                                     /          / |
                                    +----------+  |
                            +-------|          |  +
                           /        |          | /|
                          /         |          |/ |
                         +----------+----------+  |
                 +-------|          |          |  +
                /        |          |          | /|
               /         |          |          |/ |
              +----------+----------+----------+  |
              |          |          |          |  +
              |          |          |          | / 
              |          |          |          |/  
              +----------+----------+----------+   
**Input 3**
$$
A = \left[\begin{matrix}1 & 1 & 1\\1 & 2 & 1\\1 & 1 & 1\end{matrix}\right]
$$
**Output 3**

                         +----------+              
                 +------/          /|--+----------+
                /      /          / | /          /|
               /      +----------+  |/          / |
              +-------|          |  +----------+  |
             /        |          | /          /|  +
            /         |          |/          / | / 
           +----------+----------+----------+  |/  
          /          /          /          /|  +   
         /          /          /          / | /    
        +----------+----------+----------+  |/     
        |          |          |          |  +      
        |          |          |          | /       
        |          |          |          |/        
        +----------+----------+----------+         
**Input 4**
$$
A = \left[\begin{matrix}1 & 2 & 3\\0 & 1 & 4\\2 & 1 & 0\end{matrix}\right]
$$
**Output 4**

                                    +----------+   
                                   /          /|--+
                                  /          / | /|
                                 +----------+  |/ |
                                 |          |  +  |
                            +----|          | /|  +
                           /     |          |/ | /|
                          /      +----------+  |/ |
                         +-------|          |  +  |
                 +-------|       |          | /|  +
                /        |       |          |/ | /|
           +----------+  |       +----------+  |/ |
          /          /|--+-------|          |  +  |
         /          / | /        |          | /|  +
        +----------+  |/         |          |/ | / 
        |          |  +----------+----------+  |/  
        |          | /          /|          |  +   
        |          |/          / |          | /    
        +----------+----------+  |          |/     
        |          |          |  +----------+      
        |          |          | /                  
        |          |          |/                   
        +----------+----------+                    
It seems to be difficult to complete such a graph, but you may follow the following tasks:

#### Task 1 (5 pts)

Draw one cube on the screen, and then try to draw two cubes in parallel (calculate the top-left point of the second cube and concatenate it to the first cube). If you have finished this task, you will obtain a graph like this.

                 +----------+----------+
                /          /          /|
               /          /          / |
              +----------+----------+  |
              |          |          |  +
              |          |          | / 
              |          |          |/  
              +----------+----------+   
#### Task 2 (5 pts)

Draw two cubes in the first column. If you have finished this task, you will obtain a graph like this.

                 +----------+
                /          /|
               /          / |
              +----------+  |
              |          |  +
              |          | /|
              |          |/ |
              +----------+  |
              |          |  +
              |          | / 
              |          |/  
              +----------+   
#### Task 3 (10 pts)

Calculate the position of cubes in row one of the matrix, and try to draw it on screen. After you have finished this task, you will be able to generate a graph like this.

                                       +----------+
                                      /          /|
                                     /          / |
                                    +----------+  |
                 +----------+       |          |  +
                /          /|       |          | /|
               /          / |       |          |/ |
              +----------+  |       +----------+  |
              |          |  +-------|          |  +
              |          | /        |          | /|
              |          |/         |          |/ |
              +----------+----------+----------+  |
              |          |          |          |  +
              |          |          |          | / 
              |          |          |          |/  
              +----------+----------+----------+   
#### Task 4 (5 pts)

Draw a cube in front of another cube (still, calculate the position of the top-left point, beware that you should transform a 3-D coordinate to 2-D). If you have finished this task, you will obtain a graph like this.

                 +----------+
                /          /|
               /          / |
              +----------+  |
             /          /|  +
            /          / | / 
           +----------+  |/  
           |          |  +   
           |          | /    
           |          |/     
           +----------+      
#### Task 5 (20 pts)

Use the results above to generate the whole graph.

#### Task6 (5 pts)

Add some decorations to your cubes :) like this

                 +----------+          +----------+
                /          /|         /          /|
               /          / |        /          / |
              +----------+----------+----------+  |
             /          /          /          /|  +
            /          /          /          / | / 
           +----------+----------+----------+  |/  
          /          /|=Hello===/          /|  +   
         /          / |=Compute/          / | /    
        +----------+  |=Graphi+----------+  |/     
        |=Hello====|  +-------|=Hello====|  +      
        |=Computer=| /        |=Computer=| /       
        |=Graphics=|/         |=Graphics=|/        
        +----------+          +----------+         


#### Hints

1. Choose an easy-to-draw cube is very important. You can use the cube shown in this file, it's rather easy-to-draw. Store the cube in a matrix.
2. A matrix is totally rectangular, but a cube is not exactly. Use 0 to fill the parts that should be transparent and use matrix manipulation to add it to a blank matrix.
3. Use series in mathematics to calculate position and you could get a equation [top, left] = [t(x, y), l(x, y)]. Remember what top and left means for a matrix (its actually not the "+" in the given cube)
4. Leave enough space for the matrix to grow to the left (use zeros function to generate a proper matrix in advance, it will make your life easier).