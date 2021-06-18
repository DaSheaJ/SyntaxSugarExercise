using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello What is your name?");


            var name = Console.ReadLine();

            Console.WriteLine($"hello, {name}");

            Console.WriteLine("Hello, what year is it?");

            var year = int.Parse(Console.ReadLine());

            Console.WriteLine($"Hello {name} in the year of {year}");
            

        }
    }
}
