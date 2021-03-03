using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hotelbill_calculation
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;
            do {
                Console.WriteLine("1. tea : rs 30");
                Console.WriteLine("2. coffee : 40");
                Console.WriteLine("3. lemonade : 60");
                Console.WriteLine("4. pepsi : 20");
                Console.WriteLine("please enter choice:");
                int sum, ch = Convert.ToInt32(Console.ReadLine());
                sum = 0;
                switch (ch)
                {
                    case 1:
                        {
                            sum = sum + 30;
                            Console.WriteLine("here is tea and bill is :" + sum);
                            break;
                        }
                    case 5:
                        {
                            sum = sum + 40;
                            Console.WriteLine("here is coffee and bill is :" + sum);
                            break;
                        }
                    case 3:
                        {
                            sum = sum + 60;
                            Console.WriteLine("here is lemonade and bill is :" + sum);
                            break;
                        }
                    case 4:
                        {
                            sum = sum + 20;
                            Console.WriteLine("here is pepsi and bill is :" + sum);
                            break;
                        }
                        
                }

                Console.WriteLine("would you like to continue y/n");
                str = Console.ReadLine();
            } while (str == "y");

        }
    }
}
