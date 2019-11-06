using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP012019.oops
{

     class Parent
    {

        public Parent(int a) : this()
        {
            //Console.WriteLine("Parent(int)");
        }

        public Parent()
        {
            //Console.WriteLine("Parent()");
        }
        ~Parent()
        {
            Console.WriteLine("~Parent()");
        }
    }

    class Child : Parent
    {
        public Child():this(0)
        {
           // Console.WriteLine("Child()");
        }

        public Child(int a) : base()
        {
            //Console.WriteLine("Child(int)");
        }
    }
    class ConstructorDemo
    {

        public static void method()
        {
            Parent p = new Parent();
            for (int i = 0; i < 10000000; i++)
                p = new Child();
        }
        //
        static void Main(string[] args)
        {
            method();


            Console.WriteLine("Done");
            // manually call for the GC to collect
            //System.GC.Collect();

            //Parent p1 = new Parent(10);

           // Child c = new Child();

            Console.ReadKey();
        }
    }
}
