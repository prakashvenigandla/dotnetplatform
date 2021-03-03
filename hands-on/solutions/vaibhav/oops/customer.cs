using System;
using System.Collections.Generic;
using System.Text;

namespace customer
{
    class customerdetails
    {
        public int Id { get; set; }
        public string NAME { get; set; }
        public string EMAIL { get; set; }
        public long Mobile { get; set; }
        public string address { get; set; }
        public string loyaltymembership { get; set; }
        public customerdetails(int id, string name, string email, long Mobile, string address, string loyaltymembership)
        {
            Id = id;
            NAME = name;
            EMAIL = email;
            this.Mobile = Mobile;
            this.address = address;
            this.loyaltymembership = loyaltymembership;
        }
        public void Display()
        {
            Console.WriteLine("Customer Details ");
            Console.WriteLine(" Id        : {0}\n " +
                              "Name       : {1}\n " +
                              "Email      : {2}\n " +
                              "Mobile     : {3}\n " +
                              "Address    : {4}\n" +
                              "Membership : {5}\n", Id, NAME, EMAIL, Mobile, address, loyaltymembership);
        }
    }
}
