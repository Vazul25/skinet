using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Errors
{
    public class ApiResponse
    {
        public ApiResponse(int statusCode, string message = null)
        {
            StatusCode = statusCode;
            Message = message ?? GetDefaultMessageForStatusCode(statusCode);
        }


        public int StatusCode { get; }
        public string Message { get; }
        private string GetDefaultMessageForStatusCode(int statusCode)
        {
            return statusCode switch
            {
                400 => "A bad request, you have made ",
                401 => "Authorized, you are not",
                404 => "Resource found, it was not",
                500 => "Errors are path to the dark side. Errors lead to anger. Anger leadst to hate. hate leads to career change",
                _ => null
            };
        }
    }
}
