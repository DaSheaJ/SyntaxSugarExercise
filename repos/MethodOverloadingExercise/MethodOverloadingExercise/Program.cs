using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MethodOverloadingExercise
{
    class Program
    {
       
        
			//Create a method named Add, that accepts two integers and returns the sum of 
			//those two integers

			public static int Add(int num1, int num2)
			{
				return num1 + num2;
			}

			public static decimal Add(decimal num1, decimal num2)
			{
				return num1 + num2;
			}

			public static string Add(int num1, int num2, bool isCheck)
			{
				var sum = num1 + num2;

				if (isCheck == true && sum > 1)
				{
					return $"{sum} dollars";
				}
				else if (isCheck == true && sum == 1)
				{
					return $"{sum} dollar";
				}
				else if (isCheck == true && sum < 1)
				{
					return $"{sum} dollars";
				}
				else
				{
					return sum.ToString();
				}
			}

			static void Main(string[] args)
			{
				var x = 29;
				var y = 55;

				var answer = Add(x, y);

				var a = 32.0m;
				var b = 45.0m;

				var decimalAnswer = Add(a, b);

				var thirdAnswer = Add(0, 0, true);

				Console.WriteLine($"int add: {answer} decimal add: {decimalAnswer}");
				Console.WriteLine(thirdAnswer);
			}
		}
	}

       