using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP012019
{

    class Person
    {

    }
    class ClassesAndObjects
    {

        static void Main(string[] args)
        {
            // Class : is a description/blueprint/template for a type, 
            // that defnes it's states (variables and objects) and behaviours (methods)

            // Object : is an instance of a class  

            // Variable : 

            int a = 10;
            int[] arr = new int[10];

            Random r = new Random();
            Person Pvar;        // create a variable of type Person
            new Person();       // create an object of type Person
            Person p =  new Person();       // variable p is refereing to object of type Person
        }
    }
}
