import java.text.NumberFormat.Style;
public class App
{
    public static void main (String []args)

    {
         String choice = "yes";

         switch(choice)
        {
            case "y":
                System.out.println("OUI ");
                break;

            case "n" :
                System.out.println("NON");
                break;
            
            default:
                System.out.println("Ni oui ni non"); 
                break;

        }

    }



}

