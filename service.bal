import menaka/aasasas;
import ballerina/http;

configurable string clientId = ?;
configurable string clientSecret = ?;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        aasasas:Client aasasasEndpoint = check new ({auth: {clientId: clientId, clientSecret: clientSecret}}, "fsdfsdfdsfds");
        string getGreetingResponse = check aasasasEndpoint->getGreeting("dfdsfsdfds");

        return "Hello, " + getGreetingResponse;
    }
}
