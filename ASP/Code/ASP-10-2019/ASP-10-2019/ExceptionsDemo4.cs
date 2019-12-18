using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP_10_2019
{
    class ExceptionsDemo4
    {
        static void Main(string[] args)
        {
            try
            {
                int numberOne, numberTwo;
                Console.Write("Enter N1 : ");
                numberOne = int.Parse(Console.ReadLine());
                Console.Write("Enter N2 : ");
                numberTwo = int.Parse(Console.ReadLine());
                double result = numberOne / numberTwo;
                Console.WriteLine("The Result is : " + result);
            }
            catch (DivideByZeroException)
            {
                Console.WriteLine("Error , Divide By Zero");
            }

        }

    }
}
