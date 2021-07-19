using System;
namespace FactoryPatternExercise
{
    public class ThreeWheeler : IVehicle
    {
        public ThreeWheeler()
        {
        }

        public void Drive()
        {
            Console.WriteLine("Let's get going!");
        }
    }
}
