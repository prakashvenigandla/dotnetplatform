using System;


namespace HotelBill
{
    class Program
    {
        static void Main(string[] args)
        {
            int n,sum=0;
            string str;
            do
            {
                Console.WriteLine("Menu Card:");
                Console.WriteLine("1.Puri is for 25/-");
                Console.WriteLine("2.Idli is for 20/-");
                Console.WriteLine("3.Dosa is for 25/-");
                Console.WriteLine("4.Poha is for 15/-");
                Console.WriteLine("enter your choice");
                int ch = Convert.ToInt32(Console.ReadLine());
                switch (ch)
                {
                    case 1:
                        {
                            sum = sum + 25;
                            Console.WriteLine("here you go with Puri");
                            break;
                        }
                    case 2:
                        {
                            sum = sum + 20;
                            Console.WriteLine("here you go with Idli");
                            break;
                        }
                    case 3:
                        {
                            sum = sum + 25;
                            Console.WriteLine("here you go with Dosa");
                            break;
                        }
                    case 4:
                        {
                            sum = sum + 15;
                            Console.WriteLine("here you go with Poha");
                            break;
                        }
                }

                Console.WriteLine("how many would you like to have?");
                n = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("would you like to have some more y/n");
                str = Console.ReadLine();
            } while (str == "y");
            if(str=="n")
            {
                int bill = n * sum;
                Console.WriteLine("Your Bill:"+bill);

            }
        }
    }
}
