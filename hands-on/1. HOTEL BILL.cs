using System;

namespace HotelBill
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("\n\t\t\t-x-x-x-x-x-x-x WELCOME TO THE FOODIE HUB-x-x-x-x-x-x-x\t\n");
            Console.WriteLine("Press Y to order something else press N");
            string choice=null;
            string choice2=null;
            int sum = 0;
            Program p = new Program();
            choice = Console.ReadLine();
            if (choice == "Y" || choice == "y")
            {
                
              sum+=  p.Display(); }
              
            else
                Console.WriteLine("You didn't selected any item");

            Console.WriteLine("Press Y to order more item");
            choice2 = Console.ReadLine();
            if (choice2 == "y" || choice2 == "Y")
            { sum+=p.Display();  }
            else { Console.WriteLine("Enter Correct Choice"); }
            Console.WriteLine("\n\t\t\t\t-x-x-x-Your total bill is:-" + sum+" -x-x-x-\t\n");
              
        }
        int Display()
        {
            int sum=0;
            int choice;
            Console.WriteLine("1. Tea        :- Rs 10");
            Console.WriteLine("2. Cofee      :- Rs 20 ");
            Console.WriteLine("3. Sandwich   :- Rs 45 ");
            Console.WriteLine("4. Ice Cream  :- Rs 25 ");
            Console.WriteLine("5. Cold Drink :- Rs 50 ");
            Console.WriteLine("Enter your choice");
            choice = Convert.ToInt32(Console.ReadLine());
            switch (choice)
            {
                case 1:
                    sum += 10;
                    break;
                case 2:
                    sum += 20;
                    break;
                case 3:
                    sum += 45;
                    break;
                case 4:
                    sum += 25;
                    break;
                case 5:
                    sum += 50;
                    break;
                default:
                    Console.WriteLine("Enter Correct Choice");
                    break;

            }
            
            return sum;
        }
    }
}
