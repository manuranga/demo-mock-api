import ballerina/http;

final http:Client httpClientOrigin = check new ("https://11078867-1029-8157-8239-933112661012-dev.e1-us-east-azure.choreoapis.dev/mi-test/userorigin/v1.0",
    auth = {
        tokenUrl: "https://api.asgardeo.io/t/manu/oauth2/token",
        clientId: "LKbi28GJNftr1tCxxWNfMcS091Ea",
        clientSecret: "RaEwUGIsBfHWQNf75dT21ZxwHzbr_854GtgGRtc3pRUa"
    }
);

final http:Client httpClientTarget = check new ("https://11078867-1029-8157-8239-933112661012-prod.e1-us-east-azure.choreoapis.dev/mi-test/usertarget/v1",
    auth = {
        tokenUrl: "https://api.asgardeo.io/t/manu/oauth2/token",
        clientId: "6f70bbCrRZzqRmN84yfj9HMvevIa",
        clientSecret: "BbQEGe97DNxYMzeNMxffCd4GosPPdK7cBj5aBFTgWPYa"
    }
);
