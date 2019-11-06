using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASP012019.oops
{
     class Point
    {
        public int x, y, z;
    }
    class DataHiddenDemo
    {
        static void Main(string[] args)
        {

            Point p = new Point();      // int x , y ,z ;
            Point p1 = new Point();     // int x1 , y1 ,z1 ;


            p.x = 10;

            p.x = 20;
           


        }
    }
}
