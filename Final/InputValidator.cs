using System;
using System.Text.RegularExpressions;
namespace Final
{
    public class InputValidator
    {
        public bool CheckForEnglishChars(string newUserInput)
        {
            bool inputvalid = false;

            //Regex the string looking for ONLY English chars
            Regex regexPattern = new Regex(@"^[A-Za-z]+$", RegexOptions.Compiled | RegexOptions.IgnoreCase);
            MatchCollection matches = regexPattern.Matches(newUserInput);
            if (matches.Count > 0)
            {
                inputvalid = true;
            }

            return inputvalid;

        }
    }//class
}//namepace