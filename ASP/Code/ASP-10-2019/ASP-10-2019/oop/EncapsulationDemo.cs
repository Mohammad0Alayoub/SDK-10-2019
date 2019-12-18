using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP012019.oops
{
    class A
    {
        public int a1;      // accessable from any where 
        private int a2;     // from inside the class 
        protected int a3;   // from insde any child object of the class 
        internal int a4;        // in the same assembly 
        internal protected int a5;  // from any child object or any class in the same assembly

        void method()
        {
            a1 = 1;
            a2 = 2;
            a3 = 3;
            a4 = 4;
        }
   
    }
    class EncapsulationDemo
    {
        static void Main(string[] args)
        {
            A a = new A();
            a.a1 = 10;
            a.a4 = 10;
            a.a5 = 10;


            Console.ReadKey();
            
        }
    }
}
