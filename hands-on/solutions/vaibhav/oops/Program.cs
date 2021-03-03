using System;

namespace customer 
{
    class Mainclass
    {
        public static void Main(string[] args)
        {
            customerdetails details= new customerdetails  (9650, "vaibhav", "vaibhavdeshwal@gmail.com", 9650373595, "B sector", "GOLD");
            details.Display();
        }
    }
}
