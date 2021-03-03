using System;

namespace HotelBill
{
    class Program
    {
        static void Main(string[] args)
        {
            int total_cost = 0;
            int price = 0;
            char ch;
            do
            {
                Console.WriteLine("Menu:");
                Console.WriteLine("1.Samosa -----Rs.10 for each");
                Console.WriteLine("2.Fries------Rs.125 for each");
                Console.WriteLine("3.Dosa------Rs.150 for each");
                Console.WriteLine("4.Maggie---Rs.50 for each");
                Console.WriteLine("Please select an item");
                int a = Convert.ToInt32(Console.ReadLine());
                switch (a)
                {
                    case 1:
                        {
                            price = 10;
                            break;
                        }
                    case 2:
                        {
                            price = 125;
                            break;
                        }
                    case 3:
                        {
                            price = 150;
                            break;
                        }
                    case 4:
                        {
                            price = 50;
                            break;
                        }
                }
                Console.WriteLine("Please Enter Quantity");
                int b = Convert.ToInt32(Console.ReadLine());
                total_cost = total_cost + price * b;
                Console.WriteLine("Would you like to have more?");
                Console.WriteLine("If YES please enter 'y' else enter 'n' ");
                ch = Convert.ToChar(Console.ReadLine());
            } while (ch == 'y');
            Console.WriteLine("Total bill: " + total_cost);
        }
    }
}
