using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP_10_2019.oop
{

    interface Ac
    {
        void Info();
    }

    abstract class abClass
    {
        public abClass()
        { }
        public abstract void  info();
        public virtual void print(string str)
        {
            Console.WriteLine(str);
        }

    }

    class abClassChild : abClass
    {
        public override void info()
        {
            Console.WriteLine("This is supclass");
        }

        public override void print(string str)
        {
            Console.WriteLine(str);
            Console.WriteLine();
        }
    }

    class abClassChild2 : abClassChild
    {
        public override void print(string str)
        {
            Console.WriteLine();
            Console.WriteLine(str);
        }
    }

    class A
    {
        private string about = "This is Class A";

        public void info(string str)
        {
            Console.WriteLine(about + str);
        }
    }

    class C : A
    {
        
    }
    public class D : Ac
    {
        void Ac.Info()
        {
            Console.WriteLine("Hello word");
        }
    }


    class FirstClass
    {
        class B
        {
            private string about = "This is Class A";
            
            public void info(string str)
            {
                Console.WriteLine(about + str);
            }
        }
        static void Main(string[] args)
        {
            FirstClass firstClass = new FirstClass();
            

            A object1 = new A();
            object1.info(" Hey there");

            B object2 = new B();
            object2.info(" 123");

            C object3 = new C();
            object3.info(" parent to class C");
            

            Console.ReadKey();
        }

    }


}
