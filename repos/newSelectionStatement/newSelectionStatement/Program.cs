using System;

namespace CSharpSelectionStatements
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to the guessing game!");
            Console.WriteLine("See if you can guess the correct number!");
            Console.WriteLine("What is the upper limit for the range of the number?");

            var userResponse = Console.ReadLine();

            var upperLimit = int.Parse(userResponse);

            var random = new Random();
            var number = random.Next(1, upperLimit);

            Console.WriteLine("Input your guess:");

            var guess = int.Parse(Console.ReadLine());

            if (guess > number)
            {
                Console.WriteLine("Wrong, too high try again!");
            }
            else if (guess < number) 
            {
                Console.WriteLine("No! your number is too low, Sorry");
            }
            else
            {
                Console.WriteLine("Correct!");
            }
        }
    }
}
