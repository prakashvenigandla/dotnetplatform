using System;
using OOPSConcept;
namespace OOPSConcepts
{
    class Program
    {
        static void Main(string[] args)
        {
            Customer cust = new Customer(123, "Kavya", "k.Gmai", 91088, "hyd", "Loyal");
            cust.Display();
        }
    }
}