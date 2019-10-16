int choice;
            double numberOne, numberTwo;
            
            print("1.inputing two number.");
            Console.WriteLine("2.Add two number .");
            Console.WriteLine("3.Subtarct two number .");
            Console.WriteLine("4.multiplay two number .");
            Console.WriteLine("5.division two number .");
            Console.WriteLine("6.reminder of two number .");

            Console.WriteLine("Enter The index of What U want from our menu,");
            Console.Write(">> ");
            choice = int.Parse(Console.ReadLine());

            switch(choice)
            {
                case 1:
                    {
                        print("");
                        printn("Enter first Number : ");
                        double.TryParse(Console.ReadLine(), out numberOne);
                        printn("Enter secound Number : ");
                        double.TryParse(Console.ReadLine(), out numberTwo);
                        printn("Done");
                        for (int i = 0; i < 4; i++)
                        {
                            Thread.Sleep(700);
                            printn(".");
                        }

                    }
                    break;

                case 2:
                    {


                    }
                    break;

                case 3:
                    {

                    }
                    break;

                case 4:
                    {

                    }
                    break;

                case 5:
                    {

                    }
                    break;

                case 6:
                    {

                    }
                    break;
            }


            
        }
		Console.ReadKey();