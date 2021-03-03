using System;

namespace electricity_ill
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;
            do
            {
                Console.WriteLine("please enter the electricity unit");
                int bill, units = Convert.ToInt32(Console.ReadLine());
                bill = 0;
                if (units > 0 && units <= 100)
                {
                    bill = bill + (5 * units);
                }
                else if (units > 100 && units <= 200)
                {
                    bill = bill + (7 * units);
                }
                else if (units > 200 && units <= 300)
                {
                    bill = bill + (10 * units);
                }
                else if (units > 300 && units <= 400)
                {
                    bill = bill + (12 * units);
                }
                else if (units > 400)
                {
                    bill = bill + (15 * units);
                }
                else
                {
                    Console.WriteLine("please enter valid input");
                }
                double gst = 0.14 * bill;
                double t_bill = gst + bill;
                Console.WriteLine("your total bill is:" + t_bill);
                Console.WriteLine("would you like to continue y/n");
                str = Console.ReadLine();
            } while (str == "y");
            
        }
    }
}
