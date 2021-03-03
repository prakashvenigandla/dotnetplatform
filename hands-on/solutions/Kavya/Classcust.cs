using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPSConcept
{
   
        class Customer
        {
            private int id;
            private string name;
            private string email;
            private long mobile;
            private string address;
            private string loyaltyMem;

            public int Id { get; set; }
            public string Name { get; set; }
            public string Email { get; set; }
            public long Mobile { get; set; }
            public string Address { get; set; }
            public string LoyaltyMem { get; set; }
            public Customer(int id, string name, string email, long mobile, string address, string loyaltyMem)
            {
                Id = id;
                Name = name;
                Email = email;
                Mobile = mobile;
                Address = address;
                LoyaltyMem = loyaltyMem;
            }
            public void Display()
            {
                Console.WriteLine("Customer Info:");
                Console.WriteLine("Id:{0},Name:{1},Email:{2},Mobile:{3},Address:{4},LoyaltyMembership:{5}", Id, Name, Email, Mobile, Address, LoyaltyMem);
            }
        }
    }
