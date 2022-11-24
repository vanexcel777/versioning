/* Java Program Example - Java Constructor
 * In this program, Box uses a constructor to 
 * initialize the dimensions of a box  
 */

class Box
{
    double width;
    double height;
    double depth;
    
    /* this is the constructor for the Box */
    Box()
    {
        System.out.println("Constructing Box");
        width = 100;
        height = 100;
        depth = 100;
    }
    
    /* calculate and return the volume */
    double volume()
    {
        return width * height * depth;
    }
}

class BoxDemo
{
    public static void main(String args[])
    {
        
        /* declare, allocate, and initialize the Box objects */
        Box mybox1 = new Box();
        Box mybox2 = new Box();
        
        double vol;
        
        /* get the volume of the first box */
        vol = mybox1.volume();
        
        /* print the volume of the first box */
        System.out.println("Volume of the first box is " + vol);
        
        /* get the volume of the second box */
        vol = mybox2.volume();
        
        /* print the volume of the second box */
        System.out.println("Volume of the second box is " + vol);
        
    }
}