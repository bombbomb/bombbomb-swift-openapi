//
// CurriculumAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CurriculumAPI: APIBase {
    /**
     Get Curricula
     
     - parameter includeProgress: (query) Whether to return progress with the curriculum. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCurricula(includeProgress includeProgress: Bool? = nil, completion: ((data: [Curriculum]?, error: ErrorType?) -> Void)) {
        getCurriculaWithRequestBuilder(includeProgress: includeProgress).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Curricula
     - GET /curricula/
     - Get Curricula, optionally with progress included.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{contentType=application/json, example=[ {
  "imgUrl" : "imgUrl",
  "htmlIntro" : "htmlIntro",
  "name" : "name",
  "renderAs" : "renderAs",
  "progress" : [ {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "id" : "id",
  "visibleToAllUsers" : true,
  "itemCount" : 0
}, {
  "imgUrl" : "imgUrl",
  "htmlIntro" : "htmlIntro",
  "name" : "name",
  "renderAs" : "renderAs",
  "progress" : [ {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "id" : "id",
  "visibleToAllUsers" : true,
  "itemCount" : 0
} ]}]
     
     - parameter includeProgress: (query) Whether to return progress with the curriculum. (optional)

     - returns: RequestBuilder<[Curriculum]> 
     */
    public class func getCurriculaWithRequestBuilder(includeProgress includeProgress: Bool? = nil) -> RequestBuilder<[Curriculum]> {
        let path = "/curricula/"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "includeProgress": includeProgress
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Curriculum]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get Detailed For User
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getUserCurriculumWithProgress(completion: ((data: [CurriculumWithProgress]?, error: ErrorType?) -> Void)) {
        getUserCurriculumWithProgressWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Detailed For User
     - GET /curriculum/getForUserWithProgress
     - Get all curricula for user including progress for each curriculum.
     - OAuth:
       - type: oauth2
       - name: BBOAuth2
     - examples: [{contentType=application/json, example=[ {
  "imgUrl" : "imgUrl",
  "htmlIntro" : "htmlIntro",
  "name" : "name",
  "progress" : [ {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "renderAs" : "renderAs",
  "id" : "id",
  "visibleToAllUsers" : true,
  "itemCount" : 0
}, {
  "imgUrl" : "imgUrl",
  "htmlIntro" : "htmlIntro",
  "name" : "name",
  "progress" : [ {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "curriculumItemId" : "curriculumItemId",
    "id" : "id",
    "curriculumId" : "curriculumId",
    "userId" : "userId",
    "completedDate" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "renderAs" : "renderAs",
  "id" : "id",
  "visibleToAllUsers" : true,
  "itemCount" : 0
} ]}]

     - returns: RequestBuilder<[CurriculumWithProgress]> 
     */
    public class func getUserCurriculumWithProgressWithRequestBuilder() -> RequestBuilder<[CurriculumWithProgress]> {
        let path = "/curriculum/getForUserWithProgress"
        let URLString = bombbomb-swift-openapiAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CurriculumWithProgress]>.Type = bombbomb-swift-openapiAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
