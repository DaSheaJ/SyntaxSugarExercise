using System;

namespace StaticKeywordExercise
{
    class Program
    {
        static void Main(string[] args)
        {
            var celsius = TempConverter.FahrenheitToCelsius(68);
            var fahrenheit = TempConverter.CelciusToFahrenheit(20);

            Console.WriteLine($"celsius {celsius}");
            Console.WriteLine($"fahrenhiet {fahrenheit}");
        }
    }
}
