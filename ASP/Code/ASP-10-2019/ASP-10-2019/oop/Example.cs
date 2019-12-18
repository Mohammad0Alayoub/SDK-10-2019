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
        public virtual double calculate(double FNumber, double SNumber)
        {
            return -1;
        }
    }

    class Sum : calclater
    {
        public override void info()
        {
            Console.WriteLine("Please wait to Print the sumation");
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
            Console.WriteLine("Please wait to Print the Subtraction");

        }
        public override double calculate(double FNumber, double SNumber)
        {
            return FNumber - SNumber;
        }

    }

    class Multiply : calclater
    {
        public override void info()
        {
            Console.WriteLine("Please wait to Print the Multiplation");

        }

        public override double calculate(double FNumber, double SNumber)
        {
            return FNumber * SNumber;
        }
    }

    class Divison : calclater
    {
        public override void info()
        {
            Console.WriteLine("Please wait to Print the Divison");

        }

        public override double calculate(double FNumber, double SNumber)
        {
            return FNumber / SNumber;
        }
    }
    class Example
    {
        static void Main(string[] args)
        {
            calclater sum = new Sum();
            calclater diffrance = new Diffrence();
            calclater multipy = new Multiply();
            calclater diviosn = new Divison();

            double n1, n2;
            Console.Write("Enter Number one : ");
            n1 = double.Parse(Console.ReadLine());
            Console.Write("Enter Number two : ");
            n2 = double.Parse(Console.ReadLine());
            sum.info();
            Console.WriteLine("The sum is : " + sum.calculate(n1,n2));
            diffrance.info();
            Console.WriteLine("The diffrance is : " + diffrance.calculate(n1,n2));


        }


    }
}
