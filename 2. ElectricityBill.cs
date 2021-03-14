using System;

namespace handsOn
{
    class Electricity
    {
       public static void Main(string[] args)
        {
            int unit=0, amount=0;
            Console.WriteLine("\n------------ Welcome to Bill Counter ---------------\n");
            Console.WriteLine("Enter number of units to calculate bill amount");
            unit=Convert.ToInt32(Console.ReadLine());
            if(unit>=0&&unit<=100)
            {
                amount = unit * 3;
            }
            else if(unit>=101&&unit<=200)
            {
                amount = unit * 4;
            }
            else if(unit>=201&&unit<=400)
            {
                amount = unit * 5;
            }
            Console.WriteLine("The amount of electricity bill is :- "+amount);

        }
    }

   
}
