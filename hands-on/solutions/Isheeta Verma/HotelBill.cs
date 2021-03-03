using System;
namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;
            do
            {

                Console.WriteLine("Please enter your Electricity Units:");
                int bill, units = Convert.ToInt32(Console.ReadLine());
                bill = 0;
                if (units >= 0 && units <= 100)
                {
                    bill = bill + (5 * units);
                }
                else if (units > 100 && units <= 200)
                {
                    bill = bill + ((5 * 100) + 7 * (units - 100));
                }
                else if (units > 200 && units <= 300)
                {
                    bill = bill + ((12 * 100) + 10 * (units - 200));
                }
                else if (units > 300 && units <= 400)
                {
                    bill = bill + ((22 * 100) + 12 * (units - 300));
                }
                else if (units > 400)
                {
                    bill = bill + ((34 * 100) + 15 * (units - 400));
                }
                else
                {
                    Console.WriteLine("Please enter a valid Input Unit");
                }
                Console.WriteLine("Your Bill is:" + bill + "\n");
                double gst = 0.14 * bill;
                double t_bill = gst + bill;
                Console.WriteLine("Your total Bill is:" + t_bill + "\n");
                Console.WriteLine("Would you like to continue? press Y for yes and N for No ");
                str = Console.ReadLine();
            } while (str == "y");
        }
    }
    }
}
