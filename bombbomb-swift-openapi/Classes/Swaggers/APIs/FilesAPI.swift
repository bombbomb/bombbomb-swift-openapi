//
// FilesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FilesAPI: APIBase {
    /**
     Deletes users file
     
     - parameter docId: (form) Id of document 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func docHostDelete(docId docId: String, completion: ((error: ErrorType?) -> Void)) {
        docHostDeleteWithRequestBuilder(docId: docId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Deletes users file
     - DELETE /files
     - Deletes the file from the users s3 store
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     
     - parameter docId: (form) Id of document 

     - returns: RequestBuilder<Void> 
     */
    public class func docHostDeleteWithRequestBuilder(docId docId: String) -> RequestBuilder<Void> {
        let path = "/files"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "docId": docId
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
