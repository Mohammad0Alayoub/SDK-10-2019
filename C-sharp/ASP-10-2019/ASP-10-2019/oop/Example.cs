using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP_10_2019.oop
{
    abstract class calclater
    {
        public abstract void info();
        public virtual double calculate(double FNumber,double SNumber)
        {
            return -1;
        }
    }

    class Sum :calclater
    {
        public override void info()
        {
            Console.WriteLine("Pkease wait to Print the sumation");
        }
        public override double calculate(double FNumber, double SNumber)
        {
            return FNumber + SNumber;
        }
    }

    class Diffrence : calclater
    {
        public override void info()
        {
            Console.WriteLine("Pkease wait to Print the Subtraction");

        }
        public override double calculate(double FNumber, double SNumber)
        {
            return FNumber - SNumber;
        }

    }
    class Example
    {

    }
}
