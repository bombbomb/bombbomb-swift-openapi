//
// AccountsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AccountsAPI: APIBase {
    /**
     Get account details.
     
     - parameter email: (query) Your login email address (optional)
     - parameter pw: (query) Your password (optional)
     - parameter apiKey: (query) Your Api Key (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func accountDetails(email email: String? = nil, pw: String? = nil, apiKey: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        accountDetailsWithRequestBuilder(email: email, pw: pw, apiKey: apiKey).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get account details.
     - GET /accounts
     - Get the details of the user's account.
     
     - parameter email: (query) Your login email address (optional)
     - parameter pw: (query) Your password (optional)
     - parameter apiKey: (query) Your Api Key (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func accountDetailsWithRequestBuilder(email email: String? = nil, pw: String? = nil, apiKey: String? = nil) -> RequestBuilder<Void> {
        let path = "/accounts"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "email": email,
            "pw": pw,
            "api_key": apiKey
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create Account
     
     - parameter teamId: (form) The team id 
     - parameter firstName: (form) First name of the user. 
     - parameter lastName: (form) Last name of the user. 
     - parameter emailAddress: (form) Email address of the user. 
     - parameter companyName: (form) Company of the user. 
     - parameter phone: (form) Phone number of the user. 
     - parameter country: (form) Country of the user. (optional)
     - parameter industry: (form) Industry of the user. (optional)
     - parameter address: (form) Street Address of the user. (optional)
     - parameter city: (form) City of the user. (optional)
     - parameter postalCode: (form) Postal/Zip code of the user. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createAccount(teamId teamId: String, firstName: String, lastName: String, emailAddress: String, companyName: String, phone: String, country: String? = nil, industry: String? = nil, address: String? = nil, city: String? = nil, postalCode: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        createAccountWithRequestBuilder(teamId: teamId, firstName: firstName, lastName: lastName, emailAddress: emailAddress, companyName: companyName, phone: phone, country: country, industry: industry, address: address, city: city, postalCode: postalCode).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create Account
     - POST /accounts
     - Creates a new BombBomb account. This method is currently only available to paid seat admins.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{example="aeiou", contentType=application/json}]
     
     - parameter teamId: (form) The team id 
     - parameter firstName: (form) First name of the user. 
     - parameter lastName: (form) Last name of the user. 
     - parameter emailAddress: (form) Email address of the user. 
     - parameter companyName: (form) Company of the user. 
     - parameter phone: (form) Phone number of the user. 
     - parameter country: (form) Country of the user. (optional)
     - parameter industry: (form) Industry of the user. (optional)
     - parameter address: (form) Street Address of the user. (optional)
     - parameter city: (form) City of the user. (optional)
     - parameter postalCode: (form) Postal/Zip code of the user. (optional)

     - returns: RequestBuilder<String> 
     */
    public class func createAccountWithRequestBuilder(teamId teamId: String, firstName: String, lastName: String, emailAddress: String, companyName: String, phone: String, country: String? = nil, industry: String? = nil, address: String? = nil, city: String? = nil, postalCode: String? = nil) -> RequestBuilder<String> {
        let path = "/accounts"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "teamId": teamId,
            "firstName": firstName,
            "lastName": lastName,
            "emailAddress": emailAddress,
            "companyName": companyName,
            "phone": phone,
            "country": country,
            "industry": industry,
            "address": address,
            "city": city,
            "postalCode": postalCode
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Check if subscription purchase allowed.
     
     - parameter email: (query) Your login email address (optional)
     - parameter pw: (query) Your password (optional)
     - parameter apiKey: (query) Your Api Key (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func subscriptionPurchaseAllowed(email email: String? = nil, pw: String? = nil, apiKey: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        subscriptionPurchaseAllowedWithRequestBuilder(email: email, pw: pw, apiKey: apiKey).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Check if subscription purchase allowed.
     - GET /accounts/purchaseable
     - Check whether the user can purchase a subscription.
     
     - parameter email: (query) Your login email address (optional)
     - parameter pw: (query) Your password (optional)
     - parameter apiKey: (query) Your Api Key (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func subscriptionPurchaseAllowedWithRequestBuilder(email email: String? = nil, pw: String? = nil, apiKey: String? = nil) -> RequestBuilder<Void> {
        let path = "/accounts/purchaseable"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "email": email,
            "pw": pw,
            "api_key": apiKey
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}