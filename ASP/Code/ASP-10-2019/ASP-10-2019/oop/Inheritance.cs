using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP012019.oops
{
    // override ; is the reimplementation of an inherited method, 
    // in c# you can only override virtual, abstract or override methods 
    class Person
    {
        private bool Private;
        protected bool Protected;
        public bool Public;

        protected int id;
        protected string Name;

        public virtual void MethodInPerson()
        {
            Console.WriteLine("Person");
            id = 10;
            Name = "Person";

            Private = true;
            Protected = true;
            Public = true;
        }
    }

    // class can inherit from single class and multiple interfaces 
    class Student :Person 
    {

        public override  void MethodInPerson()
        {
            Console.WriteLine("Student");
        }

        public void MethodInStudent()
        {
            id = 20;
            Name = "Person";

            // Private = false;
            Protected = true;
            Public = true;
        }
    }
    class Employee : Person
    {
        public override void MethodInPerson()
        {
            Console.WriteLine("Employee");
        }

        void MethodInEmployee()
        {
            id = 20;
            Name = "Person";

            // Private = false;
            Protected = true;
            Public = true;
        }
    }
    class Inheritance
    {

        static void Main(string[] args)
        {
            Person p = new Person();
            Student s = new Student();

            
            p.Public = true;
            s.Public = true;
        }
    }

    class Polymorphsim
    {

        static void Main(string[] args)
        {
            Person p0 = new Person();
            Person p1 = new Student();
            Person p2 = new Employee();

            p0.MethodInPerson();            // Person
            p1.MethodInPerson();            // Student
            p2.MethodInPerson();            // Employee

            Student s = new Student();
            //Student sp = new Person();
            //sp.MethodInStudent();
            Employee e = new Employee();


            Console.ReadKey();

        }
    }
}
