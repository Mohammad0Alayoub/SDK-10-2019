using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpApp
{
    class Program
    {
        static void Main(string[] args)
        {

            int choice;
            while (true)
            {
                Console.WriteLine("1.Eqution Solver");
                Console.WriteLine("2.Calculator");
                Console.WriteLine("3.Find max and min");
                Console.WriteLine("4.Age selctors");
                Console.WriteLine("5.Day peker");
                Console.Write("Enter UR Choice : ");
                choice = int.Parse(Console.ReadLine());

                Console.WriteLine("\n");

                switch (choice)
                {
                    case 1:
                        {
                            double result;
                            Console.Write("Enter The Value of X : ");
                            double x = double.Parse(Console.ReadLine());
                            result = Math.Sin(2 * x) + 5 * Math.Cos(x);
                            Console.WriteLine("The result Of Equation sin(2*" + x + ") + 5 * cos(" + x + ") = " + result);
                            Console.WriteLine("\n");
                        }
                        break;

                    case 2:
                        {
                            double numberOne, numberTwo;
                            Console.Write("Enter Value of First Number : ");
                            numberOne = double.Parse(Console.ReadLine());
                            Console.Write("Enter Value of Secound Number : ");
                            numberTwo = double.Parse(Console.ReadLine());
                            Console.WriteLine("\n");
                            Console.WriteLine("The sum is : " + (numberOne + numberTwo));
                            Console.WriteLine("The difference is : " + (numberOne - numberTwo));
                            Console.WriteLine("The product is : " + (numberOne * numberTwo));
                            Console.WriteLine("The division  is : " + (numberOne / numberTwo));
                            Console.WriteLine("The Reminder  is : " + (numberOne % numberTwo));

                            Console.WriteLine("\n\n");

                        }
                        break;

                    case 3:
                        {
                            int num1, num2, num3, max = int.MinValue, min = int.MaxValue;
                            Console.Write("Enter First Number : ");
                            num1 = int.Parse(Console.ReadLine());
                            Console.Write("Enter secound Number : ");
                            num2 = int.Parse(Console.ReadLine());
                            Console.Write("Enter third Number : ");
                            num3 = int.Parse(Console.ReadLine());
                            Console.WriteLine("\n");
                            int[] array = new int[3];
                            array[0] = num1;
                            array[1] = num2;
                            array[2] = num3;
                            Console.WriteLine("The Max Value is : " + array.Max());
                            Console.WriteLine("The Min Value is : " + array.Min());
                            Console.WriteLine("\n");


                        }
                        break;

                    case 4:
                        {
                            Console.Write("Enter The Age : ");
                            int selector = int.Parse(Console.ReadLine());
                            Console.WriteLine("\n");
                            if(selector <= 14)
                            { Console.WriteLine("Childrin"); }
                            else if(selector >= 15 && selector <= 24)
                            { Console.WriteLine("Youth"); }
                            else if (selector >= 25 && selector <= 64)
                            { Console.WriteLine("Adult"); }
                            else
                            { Console.WriteLine("Sinor"); }
                            Console.WriteLine("\n");


                        }
                        break;

                    case 5:
                        {
                            Console.Write("Enter Day Value : ");
                            int dayChoice = int.Parse(Console.ReadLine());
                            Console.WriteLine("\n");

                            switch (dayChoice)
                            {
                                case 1:
                                    {
                                        Console.WriteLine("Sunday");

                                    }break;
                                case 2:
                                    {
                                        Console.WriteLine("Monday");
                                    }
                                    break;
                                case 3:
                                    {
                                        Console.WriteLine("Thusday");
                                    }
                                    break;
                                case 4:
                                    {
                                        Console.WriteLine("Winsday");
                                    }
                                    break;
                                case 5:
                                    {
                                        Console.WriteLine("Thersday");
                                    }
                                    break;
                                case 6:
                                    {
                                        Console.WriteLine("Friday");
                                    }
                                    break;
                                case 7:
                                    {
                                        Console.WriteLine("Saturday");
                                    }
                                    break;

                                default:
                                    { Console.WriteLine("Wrong input"); }break;
                            }
                            Console.WriteLine("\n");

                        }
                        break;

                }

            }
        }
    }
}
