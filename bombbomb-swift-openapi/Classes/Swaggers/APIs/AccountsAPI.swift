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
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func accountDetails(completion: ((error: ErrorType?) -> Void)) {
        accountDetailsWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get account details.
     - GET /accounts
     - Get the details of the user's account.

     - returns: RequestBuilder<Void> 
     */
    public class func accountDetailsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/accounts"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
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
     - parameter preventWelcomeEmail: (form) prevent an email with login credentials from being sent to the new account. must be set to &#39;true&#39; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createAccount(teamId teamId: String, firstName: String, lastName: String, emailAddress: String, companyName: String, phone: String, country: String? = nil, industry: String? = nil, address: String? = nil, city: String? = nil, postalCode: String? = nil, preventWelcomeEmail: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        createAccountWithRequestBuilder(teamId: teamId, firstName: firstName, lastName: lastName, emailAddress: emailAddress, companyName: companyName, phone: phone, country: country, industry: industry, address: address, city: city, postalCode: postalCode, preventWelcomeEmail: preventWelcomeEmail).execute { (response, error) -> Void in
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
     - parameter preventWelcomeEmail: (form) prevent an email with login credentials from being sent to the new account. must be set to &#39;true&#39; (optional)

     - returns: RequestBuilder<String> 
     */
    public class func createAccountWithRequestBuilder(teamId teamId: String, firstName: String, lastName: String, emailAddress: String, companyName: String, phone: String, country: String? = nil, industry: String? = nil, address: String? = nil, city: String? = nil, postalCode: String? = nil, preventWelcomeEmail: String? = nil) -> RequestBuilder<String> {
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
            "postalCode": postalCode,
            "preventWelcomeEmail": preventWelcomeEmail
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Client Statistics
     
     - parameter clientId: (query) Client ID of the account to retrieve. Defaults to yourself. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getClientStatistics(clientId clientId: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        getClientStatisticsWithRequestBuilder(clientId: clientId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Get Client Statistics
     - GET /accounts/stats
     - Gets general statics for a Client
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter clientId: (query) Client ID of the account to retrieve. Defaults to yourself. (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func getClientStatisticsWithRequestBuilder(clientId clientId: String? = nil) -> RequestBuilder<Void> {
        let path = "/accounts/stats"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "clientId": clientId
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Check if subscription purchase allowed.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func subscriptionPurchaseAllowed(completion: ((error: ErrorType?) -> Void)) {
        subscriptionPurchaseAllowedWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Check if subscription purchase allowed.
     - GET /accounts/purchaseable
     - Check whether the user can purchase a subscription.

     - returns: RequestBuilder<Void> 
     */
    public class func subscriptionPurchaseAllowedWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/accounts/purchaseable"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
