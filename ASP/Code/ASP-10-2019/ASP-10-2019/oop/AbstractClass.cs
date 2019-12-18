using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP012019.oops
{
    abstract class Shape
    {
        public Shape()
        {
            Console.WriteLine("Shape()");
        }
        public abstract double Area();

        public void NonAbstractMethod()
        {
            Console.WriteLine("NonAbstractMethod()");
        }
    }

    interface IA
    {

    }
    interface IB : IA
    {

    }
    class Rectangel : Shape
    {
        public Rectangel()
        {
            Console.WriteLine("Rectangel()");
        }
        public override double Area()
        {
            throw new NotImplementedException();
        }
    }
    class AbstractClassDemo
    {
        static void Main(string[] args)
        {
            Shape s = new Rectangel();

            Console.ReadKey();
        }
    }
}
