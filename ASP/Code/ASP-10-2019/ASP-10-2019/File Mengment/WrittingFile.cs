using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace ASP_10_2019.File_Mengment
{
    class WrittingFile
    {
        static void Main()
        {
            try
            {
                StreamWriter file = File.CreateText(@"C:\Users\User\Desktop\Test\File1.txt");

                string line;

                do
                {
                    Console.Write("Enter a sentence: "); line = Console.ReadLine();

                    if (line.Length != 0) { file.WriteLine(line); }
                } while (line.Length != 0);
                
                file.Close();
            }
            catch (Exception ex) { Console.WriteLine("Error - {0}", ex.Message); }

            Console.ReadKey();

            //try
            //{
            //    string folder = @"C:\Users\User\Desktop\Test\";
            //    // Filename  
            //    string fileName = "File1.txt";
            //    // Fullpath. You can direct hardcode it if you like.  
            //    string fullPath = folder + fileName;
            //    // An array of strings  
            //    string[] authors = {"Mahesh Chand", "Allen O'Neill", "David McCarter",
            //"Raj Kumar", "Dhananjay Kumar"};
            //    // Write array of strings to a file using WriteAllLines.  
            //    // If the file does not exists, it will create a new file.  
            //    // This method automatically opens the file, writes to it, and closes file  
            //    File.WriteAllLines(fullPath, authors);
            //    Console.WriteLine("Done\n\n\n");
            //    // Read a file  
            //    string readText = File.ReadAllText(fullPath);
            //    Console.WriteLine(readText);
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }
    }
}
