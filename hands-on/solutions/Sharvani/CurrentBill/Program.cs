using System;


namespace CurrentBill
{
    class Program
    {
        static void Main(string[] args)
        {
            int n;
            double bill=0;
            Console.WriteLine("enter no.of units");
            n = Convert.ToInt32(Console.ReadLine());
            if(n<101)
            {
                bill = 5*n; 
            }
            else if(n>100 && n<201)
            {
                bill = (n - 100) * 7 + 500;
            }
            else if(n>200 && n<302)
            {
                bill = (n-200)*10+500+700;
            }
            else if(n>300 && n<400)
            {
                bill = (n-300)*12+500+700+1000 ;
            }
            else
            {
                bill = 50*n;
            }
            double gst = 0.14 * bill;
            double total = bill + gst;
            
            Console.WriteLine("Bill is" + total);
        }
    }
}
