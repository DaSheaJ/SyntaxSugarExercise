using System;

namespace OperatorExercise
{
    class Program
    {
        static void Main(string[] args)
        {
            //explicit typing -
            string variableName = "Hello";

            //inferred typing -
            var varName = "Hello";

            var a = 17;
            var b = 4;

            var div = a / b;
            var mod = a % b;

            Console.WriteLine($"{a}/{b} is {div} remainder {mod}");

            var r = 20;
            var pi = Math.PI;

            var areaOfCircle = pi * (r * r);

            Console.WriteLine($"The area of a circle with radius of {r}  is {areaOfCircle}");


            var i = 3;
            var j = 4;
            var k = ++i * j++;

            Console.WriteLine(k);

        }
    }
}
