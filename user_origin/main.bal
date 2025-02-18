import ballerina/http;

service / on new http:Listener(9090) {
    // mock service for returning a list of users
    resource function get users() returns json {
        return [
            {
                "id": 1,
                "name": "Manu Perera",
                "email": "manu.perera@example.com"
            },
            {
                "id": 2,
                "name": "Samuel Vimes",
                "email": "samuel.vimes@example.com"
            },
            {
                "id": 3,
                "name": "Carrot Ironfoundersson",
                "email": "carrot.ironfoundersson@example.com"
            }
        ];
    }
}
