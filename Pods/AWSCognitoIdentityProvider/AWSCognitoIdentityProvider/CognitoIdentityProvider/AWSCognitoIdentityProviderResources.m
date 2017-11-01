//
// Copyright 2010-2017 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "AWSCognitoIdentityProviderResources.h"
#import <AWSCore/AWSCocoaLumberjack.h>

@interface AWSCognitoIdentityProviderResources ()

@property (nonatomic, strong) NSDictionary *definitionDictionary;

@end

@implementation AWSCognitoIdentityProviderResources

+ (instancetype)sharedInstance {
    static AWSCognitoIdentityProviderResources *_sharedResources = nil;
    static dispatch_once_t once_token;

    dispatch_once(&once_token, ^{
        _sharedResources = [AWSCognitoIdentityProviderResources new];
    });

    return _sharedResources;
}

- (NSDictionary *)JSONObject {
    return self.definitionDictionary;
}

- (instancetype)init {
    if (self = [super init]) {
        //init method
        NSError *error = nil;
        _definitionDictionary = [NSJSONSerialization JSONObjectWithData:[[self definitionString] dataUsingEncoding:NSUTF8StringEncoding]
                                                                options:kNilOptions
                                                                  error:&error];
        if (_definitionDictionary == nil) {
            if (error) {
                AWSDDLogError(@"Failed to parse JSON service definition: %@",error);
            }
        }
    }
    return self;
}

- (NSString *)definitionString {
    return @"{\
  \"version\":\"2.0\",\
  \"metadata\":{\
    \"apiVersion\":\"2016-04-18\",\
    \"endpointPrefix\":\"cognito-idp\",\
    \"jsonVersion\":\"1.1\",\
    \"protocol\":\"json\",\
    \"serviceFullName\":\"Amazon Cognito Identity Provider\",\
    \"signatureVersion\":\"v4\",\
    \"targetPrefix\":\"AWSCognitoIdentityProviderService\",\
    \"uid\":\"cognito-idp-2016-04-18\"\
  },\
  \"operations\":{\
    \"AddCustomAttributes\":{\
      \"name\":\"AddCustomAttributes\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AddCustomAttributesRequest\"},\
      \"output\":{\"shape\":\"AddCustomAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserImportInProgressException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Adds additional user attributes to the user pool schema.</p>\"\
    },\
    \"AdminAddUserToGroup\":{\
      \"name\":\"AdminAddUserToGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminAddUserToGroupRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Adds the specified user to the specified group.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminConfirmSignUp\":{\
      \"name\":\"AdminConfirmSignUp\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminConfirmSignUpRequest\"},\
      \"output\":{\"shape\":\"AdminConfirmSignUpResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyFailedAttemptsException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Confirms user registration as an admin without using a confirmation code. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminCreateUser\":{\
      \"name\":\"AdminCreateUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminCreateUserRequest\"},\
      \"output\":{\"shape\":\"AdminCreateUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UsernameExistsException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"CodeDeliveryFailureException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"PreconditionNotMetException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UnsupportedUserStateException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates a new user in the specified user pool and sends a welcome message via email or phone (SMS). This message is based on a template that you configured in your call to <a href=\\\"API_CreateUserPool.html\\\">CreateUserPool</a> or <a href=\\\"API_UpdateUserPool.html\\\">UpdateUserPool</a>. This template includes your custom sign-up instructions and placeholders for user name and temporary password.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminDeleteUser\":{\
      \"name\":\"AdminDeleteUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminDeleteUserRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes a user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminDeleteUserAttributes\":{\
      \"name\":\"AdminDeleteUserAttributes\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminDeleteUserAttributesRequest\"},\
      \"output\":{\"shape\":\"AdminDeleteUserAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes the user attributes in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminDisableProviderForUser\":{\
      \"name\":\"AdminDisableProviderForUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminDisableProviderForUserRequest\"},\
      \"output\":{\"shape\":\"AdminDisableProviderForUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked <code>DestinationUser</code>) signs in, they must create a new user account. See <a href=\\\"API_AdminLinkProviderForUser.html\\\">AdminLinkProviderForUser</a>.</p> <p>This action is enabled only for admin access and requires developer credentials.</p> <p>The <code>ProviderName</code> must match the value specified when creating an IdP for the pool. </p> <p>To disable a native username + password user, the <code>ProviderName</code> value must be <code>Cognito</code> and the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code>, with the <code>ProviderAttributeValue</code> being the name that is used in the user pool for the user.</p> <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for social identity providers. The <code>ProviderAttributeValue</code> must always be the exact subject that was used when the user was originally linked as a source user.</p> <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the <code>ProviderAttributeName</code> and <code>ProviderAttributeValue</code> must be the same values that were used for the <code>SourceUser</code> when the identities were originally linked in the <a href=\\\"API_AdminLinkProviderForUser.html\\\">AdminLinkProviderForUser</a> call. (If the linking was done with <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>, the same applies here). However, if the user has already signed in, the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code> and <code>ProviderAttributeValue</code> must be the subject of the SAML assertion.</p>\"\
    },\
    \"AdminDisableUser\":{\
      \"name\":\"AdminDisableUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminDisableUserRequest\"},\
      \"output\":{\"shape\":\"AdminDisableUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Disables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminEnableUser\":{\
      \"name\":\"AdminEnableUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminEnableUserRequest\"},\
      \"output\":{\"shape\":\"AdminEnableUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Enables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminForgetDevice\":{\
      \"name\":\"AdminForgetDevice\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminForgetDeviceRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Forgets the device, as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminGetDevice\":{\
      \"name\":\"AdminGetDevice\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminGetDeviceRequest\"},\
      \"output\":{\"shape\":\"AdminGetDeviceResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"NotAuthorizedException\"}\
      ],\
      \"documentation\":\"<p>Gets the device, as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminGetUser\":{\
      \"name\":\"AdminGetUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminGetUserRequest\"},\
      \"output\":{\"shape\":\"AdminGetUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the specified user by user name in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminInitiateAuth\":{\
      \"name\":\"AdminInitiateAuth\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminInitiateAuthRequest\"},\
      \"output\":{\"shape\":\"AdminInitiateAuthResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"MFAMethodNotFoundException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"}\
      ],\
      \"documentation\":\"<p>Initiates the authentication flow, as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminLinkProviderForUser\":{\
      \"name\":\"AdminLinkProviderForUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminLinkProviderForUserRequest\"},\
      \"output\":{\"shape\":\"AdminLinkProviderForUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Links an existing user account in a user pool (<code>DestinationUser</code>) to an identity from an external identity provider (<code>SourceUser</code>) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account. </p> <p> For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account. </p> <important> <p>Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.</p> </important> <p>See also <a href=\\\"API_AdminDisableProviderForUser.html\\\">AdminDisableProviderForUser</a>.</p> <p>This action is enabled only for admin access and requires developer credentials.</p>\"\
    },\
    \"AdminListDevices\":{\
      \"name\":\"AdminListDevices\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminListDevicesRequest\"},\
      \"output\":{\"shape\":\"AdminListDevicesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"NotAuthorizedException\"}\
      ],\
      \"documentation\":\"<p>Lists devices, as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminListGroupsForUser\":{\
      \"name\":\"AdminListGroupsForUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminListGroupsForUserRequest\"},\
      \"output\":{\"shape\":\"AdminListGroupsForUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the groups that the user belongs to.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminRemoveUserFromGroup\":{\
      \"name\":\"AdminRemoveUserFromGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminRemoveUserFromGroupRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Removes the specified user from the specified group.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminResetUserPassword\":{\
      \"name\":\"AdminResetUserPassword\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminResetUserPasswordRequest\"},\
      \"output\":{\"shape\":\"AdminResetUserPasswordResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Resets the specified user's password in a user pool as an administrator. Works on any user.</p> <p>When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminRespondToAuthChallenge\":{\
      \"name\":\"AdminRespondToAuthChallenge\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminRespondToAuthChallengeRequest\"},\
      \"output\":{\"shape\":\"AdminRespondToAuthChallengeResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"CodeMismatchException\"},\
        {\"shape\":\"ExpiredCodeException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"MFAMethodNotFoundException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"}\
      ],\
      \"documentation\":\"<p>Responds to an authentication challenge, as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminSetUserSettings\":{\
      \"name\":\"AdminSetUserSettings\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminSetUserSettingsRequest\"},\
      \"output\":{\"shape\":\"AdminSetUserSettingsResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Sets all the user settings for a specified user name. Works on any user.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminUpdateDeviceStatus\":{\
      \"name\":\"AdminUpdateDeviceStatus\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminUpdateDeviceStatusRequest\"},\
      \"output\":{\"shape\":\"AdminUpdateDeviceStatusResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Updates the device status as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminUpdateUserAttributes\":{\
      \"name\":\"AdminUpdateUserAttributes\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminUpdateUserAttributesRequest\"},\
      \"output\":{\"shape\":\"AdminUpdateUserAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>In addition to updating user attributes, this API can also be used to mark phone and email as verified.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"AdminUserGlobalSignOut\":{\
      \"name\":\"AdminUserGlobalSignOut\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"AdminUserGlobalSignOutRequest\"},\
      \"output\":{\"shape\":\"AdminUserGlobalSignOutResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Signs out users from all devices, as an administrator.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"ChangePassword\":{\
      \"name\":\"ChangePassword\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ChangePasswordRequest\"},\
      \"output\":{\"shape\":\"ChangePasswordResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Changes the password for a specified user in a user pool.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"ConfirmDevice\":{\
      \"name\":\"ConfirmDevice\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ConfirmDeviceRequest\"},\
      \"output\":{\"shape\":\"ConfirmDeviceResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"UsernameExistsException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Confirms tracking of the device. This API call is the call that begins device tracking.</p>\"\
    },\
    \"ConfirmForgotPassword\":{\
      \"name\":\"ConfirmForgotPassword\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ConfirmForgotPasswordRequest\"},\
      \"output\":{\"shape\":\"ConfirmForgotPasswordResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"CodeMismatchException\"},\
        {\"shape\":\"ExpiredCodeException\"},\
        {\"shape\":\"TooManyFailedAttemptsException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Allows a user to enter a confirmation code to reset a forgotten password.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"ConfirmSignUp\":{\
      \"name\":\"ConfirmSignUp\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ConfirmSignUpRequest\"},\
      \"output\":{\"shape\":\"ConfirmSignUpResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyFailedAttemptsException\"},\
        {\"shape\":\"CodeMismatchException\"},\
        {\"shape\":\"ExpiredCodeException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Confirms registration of a user and handles the existing alias from a previous user.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"CreateGroup\":{\
      \"name\":\"CreateGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateGroupRequest\"},\
      \"output\":{\"shape\":\"CreateGroupResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"GroupExistsException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates a new group in the specified user pool.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"CreateIdentityProvider\":{\
      \"name\":\"CreateIdentityProvider\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateIdentityProviderRequest\"},\
      \"output\":{\"shape\":\"CreateIdentityProviderResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"DuplicateProviderException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates an identity provider for a user pool.</p>\"\
    },\
    \"CreateResourceServer\":{\
      \"name\":\"CreateResourceServer\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateResourceServerRequest\"},\
      \"output\":{\"shape\":\"CreateResourceServerResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates a new OAuth2.0 resource server and defines custom scopes in it.</p>\"\
    },\
    \"CreateUserImportJob\":{\
      \"name\":\"CreateUserImportJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateUserImportJobRequest\"},\
      \"output\":{\"shape\":\"CreateUserImportJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PreconditionNotMetException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates the user import job.</p>\"\
    },\
    \"CreateUserPool\":{\
      \"name\":\"CreateUserPool\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateUserPoolRequest\"},\
      \"output\":{\"shape\":\"CreateUserPoolResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserPoolTaggingException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates a new Amazon Cognito user pool and sets the password policy for the pool.</p>\"\
    },\
    \"CreateUserPoolClient\":{\
      \"name\":\"CreateUserPoolClient\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateUserPoolClientRequest\"},\
      \"output\":{\"shape\":\"CreateUserPoolClientResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"ScopeDoesNotExistException\"},\
        {\"shape\":\"InvalidOAuthFlowException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates the user pool client.</p>\"\
    },\
    \"CreateUserPoolDomain\":{\
      \"name\":\"CreateUserPoolDomain\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateUserPoolDomainRequest\"},\
      \"output\":{\"shape\":\"CreateUserPoolDomainResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Creates a new domain for a user pool.</p>\"\
    },\
    \"DeleteGroup\":{\
      \"name\":\"DeleteGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteGroupRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes a group. Currently only groups with no members can be deleted.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"DeleteIdentityProvider\":{\
      \"name\":\"DeleteIdentityProvider\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteIdentityProviderRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnsupportedIdentityProviderException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes an identity provider for a user pool.</p>\"\
    },\
    \"DeleteResourceServer\":{\
      \"name\":\"DeleteResourceServer\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteResourceServerRequest\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes a resource server.</p>\"\
    },\
    \"DeleteUser\":{\
      \"name\":\"DeleteUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteUserRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Allows a user to delete himself or herself.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"DeleteUserAttributes\":{\
      \"name\":\"DeleteUserAttributes\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteUserAttributesRequest\"},\
      \"output\":{\"shape\":\"DeleteUserAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes the attributes for a user.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"DeleteUserPool\":{\
      \"name\":\"DeleteUserPool\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteUserPoolRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserImportInProgressException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes the specified Amazon Cognito user pool.</p>\"\
    },\
    \"DeleteUserPoolClient\":{\
      \"name\":\"DeleteUserPoolClient\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteUserPoolClientRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Allows the developer to delete the user pool client.</p>\"\
    },\
    \"DeleteUserPoolDomain\":{\
      \"name\":\"DeleteUserPoolDomain\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteUserPoolDomainRequest\"},\
      \"output\":{\"shape\":\"DeleteUserPoolDomainResponse\"},\
      \"errors\":[\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Deletes a domain for a user pool.</p>\"\
    },\
    \"DescribeIdentityProvider\":{\
      \"name\":\"DescribeIdentityProvider\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeIdentityProviderRequest\"},\
      \"output\":{\"shape\":\"DescribeIdentityProviderResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets information about a specific identity provider.</p>\"\
    },\
    \"DescribeResourceServer\":{\
      \"name\":\"DescribeResourceServer\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeResourceServerRequest\"},\
      \"output\":{\"shape\":\"DescribeResourceServerResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Describes a resource server.</p>\"\
    },\
    \"DescribeUserImportJob\":{\
      \"name\":\"DescribeUserImportJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeUserImportJobRequest\"},\
      \"output\":{\"shape\":\"DescribeUserImportJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Describes the user import job.</p>\"\
    },\
    \"DescribeUserPool\":{\
      \"name\":\"DescribeUserPool\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeUserPoolRequest\"},\
      \"output\":{\"shape\":\"DescribeUserPoolResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserPoolTaggingException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Returns the configuration information and metadata of the specified user pool.</p>\"\
    },\
    \"DescribeUserPoolClient\":{\
      \"name\":\"DescribeUserPoolClient\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeUserPoolClientRequest\"},\
      \"output\":{\"shape\":\"DescribeUserPoolClientResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Client method for returning the configuration information and metadata of the specified user pool client.</p>\"\
    },\
    \"DescribeUserPoolDomain\":{\
      \"name\":\"DescribeUserPoolDomain\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeUserPoolDomainRequest\"},\
      \"output\":{\"shape\":\"DescribeUserPoolDomainResponse\"},\
      \"errors\":[\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets information about a domain.</p>\"\
    },\
    \"ForgetDevice\":{\
      \"name\":\"ForgetDevice\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ForgetDeviceRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Forgets the specified device.</p>\"\
    },\
    \"ForgotPassword\":{\
      \"name\":\"ForgotPassword\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ForgotPasswordRequest\"},\
      \"output\":{\"shape\":\"ForgotPasswordResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"CodeDeliveryFailureException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the <code>Username</code> parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, <code>InvalidParameterException</code> is thrown. To use the confirmation code for resetting the password, call <a href=\\\"API_ConfirmForgotPassword.html\\\">ConfirmForgotPassword</a>.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"GetCSVHeader\":{\
      \"name\":\"GetCSVHeader\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetCSVHeaderRequest\"},\
      \"output\":{\"shape\":\"GetCSVHeaderResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the header information for the .csv file to be used as input for the user import job.</p>\"\
    },\
    \"GetDevice\":{\
      \"name\":\"GetDevice\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetDeviceRequest\"},\
      \"output\":{\"shape\":\"GetDeviceResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the device.</p>\"\
    },\
    \"GetGroup\":{\
      \"name\":\"GetGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetGroupRequest\"},\
      \"output\":{\"shape\":\"GetGroupResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets a group.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"GetIdentityProviderByIdentifier\":{\
      \"name\":\"GetIdentityProviderByIdentifier\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetIdentityProviderByIdentifierRequest\"},\
      \"output\":{\"shape\":\"GetIdentityProviderByIdentifierResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the specified identity provider.</p>\"\
    },\
    \"GetUICustomization\":{\
      \"name\":\"GetUICustomization\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetUICustomizationRequest\"},\
      \"output\":{\"shape\":\"GetUICustomizationResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app <code>clientId</code> will be <code>ALL</code>), then that is returned. If nothing is present, then an empty shape is returned.</p>\"\
    },\
    \"GetUser\":{\
      \"name\":\"GetUser\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetUserRequest\"},\
      \"output\":{\"shape\":\"GetUserResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the user attributes and metadata for a user.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"GetUserAttributeVerificationCode\":{\
      \"name\":\"GetUserAttributeVerificationCode\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetUserAttributeVerificationCodeRequest\"},\
      \"output\":{\"shape\":\"GetUserAttributeVerificationCodeResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"CodeDeliveryFailureException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Gets the user attribute verification code for the specified attribute name.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"GlobalSignOut\":{\
      \"name\":\"GlobalSignOut\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GlobalSignOutRequest\"},\
      \"output\":{\"shape\":\"GlobalSignOutResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Signs out users from all devices.</p>\"\
    },\
    \"InitiateAuth\":{\
      \"name\":\"InitiateAuth\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"InitiateAuthRequest\"},\
      \"output\":{\"shape\":\"InitiateAuthResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Initiates the authentication flow.</p>\"\
    },\
    \"ListDevices\":{\
      \"name\":\"ListDevices\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListDevicesRequest\"},\
      \"output\":{\"shape\":\"ListDevicesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the devices.</p>\"\
    },\
    \"ListGroups\":{\
      \"name\":\"ListGroups\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListGroupsRequest\"},\
      \"output\":{\"shape\":\"ListGroupsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the groups associated with a user pool.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"ListIdentityProviders\":{\
      \"name\":\"ListIdentityProviders\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListIdentityProvidersRequest\"},\
      \"output\":{\"shape\":\"ListIdentityProvidersResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists information about all identity providers for a user pool.</p>\"\
    },\
    \"ListResourceServers\":{\
      \"name\":\"ListResourceServers\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListResourceServersRequest\"},\
      \"output\":{\"shape\":\"ListResourceServersResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the resource servers for a user pool.</p>\"\
    },\
    \"ListUserImportJobs\":{\
      \"name\":\"ListUserImportJobs\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListUserImportJobsRequest\"},\
      \"output\":{\"shape\":\"ListUserImportJobsResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the user import jobs.</p>\"\
    },\
    \"ListUserPoolClients\":{\
      \"name\":\"ListUserPoolClients\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListUserPoolClientsRequest\"},\
      \"output\":{\"shape\":\"ListUserPoolClientsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the clients that have been created for the specified user pool.</p>\"\
    },\
    \"ListUserPools\":{\
      \"name\":\"ListUserPools\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListUserPoolsRequest\"},\
      \"output\":{\"shape\":\"ListUserPoolsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the user pools associated with an AWS account.</p>\"\
    },\
    \"ListUsers\":{\
      \"name\":\"ListUsers\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListUsersRequest\"},\
      \"output\":{\"shape\":\"ListUsersResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the users in the Amazon Cognito user pool.</p>\"\
    },\
    \"ListUsersInGroup\":{\
      \"name\":\"ListUsersInGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListUsersInGroupRequest\"},\
      \"output\":{\"shape\":\"ListUsersInGroupResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Lists the users in the specified group.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"ResendConfirmationCode\":{\
      \"name\":\"ResendConfirmationCode\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ResendConfirmationCodeRequest\"},\
      \"output\":{\"shape\":\"ResendConfirmationCodeResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"CodeDeliveryFailureException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Resends the confirmation (for confirmation of registration) to a specific user in the user pool.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"RespondToAuthChallenge\":{\
      \"name\":\"RespondToAuthChallenge\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"RespondToAuthChallengeRequest\"},\
      \"output\":{\"shape\":\"RespondToAuthChallengeResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"CodeMismatchException\"},\
        {\"shape\":\"ExpiredCodeException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"MFAMethodNotFoundException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Responds to the authentication challenge.</p>\"\
    },\
    \"SetUICustomization\":{\
      \"name\":\"SetUICustomization\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"SetUICustomizationRequest\"},\
      \"output\":{\"shape\":\"SetUICustomizationResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Sets the UI customization information for a user pool's built-in app UI.</p> <p>You can specify app UI customization settings for a single client (with a specific <code>clientId</code>) or for all clients (by setting the <code>clientId</code> to <code>ALL</code>). If you specify <code>ALL</code>, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the <code>ALL</code> configuration. </p> <note> <p>To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error.</p> </note>\"\
    },\
    \"SetUserSettings\":{\
      \"name\":\"SetUserSettings\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"SetUserSettingsRequest\"},\
      \"output\":{\"shape\":\"SetUserSettingsResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"SignUp\":{\
      \"name\":\"SignUp\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"SignUpRequest\"},\
      \"output\":{\"shape\":\"SignUpResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidPasswordException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"UsernameExistsException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"CodeDeliveryFailureException\"}\
      ],\
      \"documentation\":\"<p>Registers the user in the specified user pool and creates a user name, password, and user attributes.</p>\",\
      \"authtype\":\"none\"\
    },\
    \"StartUserImportJob\":{\
      \"name\":\"StartUserImportJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StartUserImportJobRequest\"},\
      \"output\":{\"shape\":\"StartUserImportJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"PreconditionNotMetException\"},\
        {\"shape\":\"NotAuthorizedException\"}\
      ],\
      \"documentation\":\"<p>Starts the user import.</p>\"\
    },\
    \"StopUserImportJob\":{\
      \"name\":\"StopUserImportJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StopUserImportJobRequest\"},\
      \"output\":{\"shape\":\"StopUserImportJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"PreconditionNotMetException\"},\
        {\"shape\":\"NotAuthorizedException\"}\
      ],\
      \"documentation\":\"<p>Stops the user import job.</p>\"\
    },\
    \"UpdateDeviceStatus\":{\
      \"name\":\"UpdateDeviceStatus\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateDeviceStatusRequest\"},\
      \"output\":{\"shape\":\"UpdateDeviceStatusResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InvalidUserPoolConfigurationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Updates the device status.</p>\"\
    },\
    \"UpdateGroup\":{\
      \"name\":\"UpdateGroup\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateGroupRequest\"},\
      \"output\":{\"shape\":\"UpdateGroupResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Updates the specified group with the specified attributes.</p> <p>Requires developer credentials.</p>\"\
    },\
    \"UpdateIdentityProvider\":{\
      \"name\":\"UpdateIdentityProvider\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateIdentityProviderRequest\"},\
      \"output\":{\"shape\":\"UpdateIdentityProviderResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"UnsupportedIdentityProviderException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Updates identity provider information for a user pool.</p>\"\
    },\
    \"UpdateResourceServer\":{\
      \"name\":\"UpdateResourceServer\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateResourceServerRequest\"},\
      \"output\":{\"shape\":\"UpdateResourceServerResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Updates the name and scopes of resource server. All other fields are read-only.</p>\"\
    },\
    \"UpdateUserAttributes\":{\
      \"name\":\"UpdateUserAttributes\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateUserAttributesRequest\"},\
      \"output\":{\"shape\":\"UpdateUserAttributesResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"CodeMismatchException\"},\
        {\"shape\":\"ExpiredCodeException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UnexpectedLambdaException\"},\
        {\"shape\":\"UserLambdaValidationException\"},\
        {\"shape\":\"InvalidLambdaResponseException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"AliasExistsException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"},\
        {\"shape\":\"CodeDeliveryFailureException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Allows a user to update a specific attribute (one at a time).</p>\",\
      \"authtype\":\"none\"\
    },\
    \"UpdateUserPool\":{\
      \"name\":\"UpdateUserPool\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateUserPoolRequest\"},\
      \"output\":{\"shape\":\"UpdateUserPoolResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"ConcurrentModificationException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"UserImportInProgressException\"},\
        {\"shape\":\"InternalErrorException\"},\
        {\"shape\":\"InvalidSmsRoleAccessPolicyException\"},\
        {\"shape\":\"InvalidSmsRoleTrustRelationshipException\"},\
        {\"shape\":\"UserPoolTaggingException\"},\
        {\"shape\":\"InvalidEmailRoleAccessPolicyException\"}\
      ],\
      \"documentation\":\"<p>Updates the specified user pool with the specified attributes.</p>\"\
    },\
    \"UpdateUserPoolClient\":{\
      \"name\":\"UpdateUserPoolClient\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateUserPoolClientRequest\"},\
      \"output\":{\"shape\":\"UpdateUserPoolClientResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"ScopeDoesNotExistException\"},\
        {\"shape\":\"InvalidOAuthFlowException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Allows the developer to update the specified user pool client and password policy.</p>\"\
    },\
    \"VerifyUserAttribute\":{\
      \"name\":\"VerifyUserAttribute\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"VerifyUserAttributeRequest\"},\
      \"output\":{\"shape\":\"VerifyUserAttributeResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterException\"},\
        {\"shape\":\"CodeMismatchException\"},\
        {\"shape\":\"ExpiredCodeException\"},\
        {\"shape\":\"NotAuthorizedException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"PasswordResetRequiredException\"},\
        {\"shape\":\"UserNotFoundException\"},\
        {\"shape\":\"UserNotConfirmedException\"},\
        {\"shape\":\"InternalErrorException\"}\
      ],\
      \"documentation\":\"<p>Verifies the specified user attributes in the user pool.</p>\",\
      \"authtype\":\"none\"\
    }\
  },\
  \"shapes\":{\
    \"AWSAccountIdType\":{\"type\":\"string\"},\
    \"AddCustomAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"CustomAttributes\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to add custom attributes.</p>\"\
        },\
        \"CustomAttributes\":{\
          \"shape\":\"CustomAttributesListType\",\
          \"documentation\":\"<p>An array of custom attributes, such as Mutable and Name.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to add custom attributes.</p>\"\
    },\
    \"AddCustomAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server for the request to add custom attributes.</p>\"\
    },\
    \"AdminAddUserToGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"GroupName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The username for the user.</p>\"\
        },\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The group name.</p>\"\
        }\
      }\
    },\
    \"AdminConfirmSignUpRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for which you want to confirm user registration.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name for which you want to confirm user registration.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to confirm user registration.</p>\"\
    },\
    \"AdminConfirmSignUpResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server for the request to confirm registration.</p>\"\
    },\
    \"AdminCreateUserConfigType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"AllowAdminCreateUserOnly\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Set to <code>True</code> if only the administrator is allowed to create user profiles. Set to <code>False</code> if users can sign themselves up via an app.</p>\"\
        },\
        \"UnusedAccountValidityDays\":{\
          \"shape\":\"AdminCreateUserUnusedAccountValidityDaysType\",\
          \"documentation\":\"<p>The user account expiration limit, in days, after which the account is no longer usable. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>\\\"RESEND\\\"</code> for the <code>MessageAction</code> parameter. The default value for this parameter is 7.</p>\"\
        },\
        \"InviteMessageTemplate\":{\
          \"shape\":\"MessageTemplateType\",\
          \"documentation\":\"<p>The message template to be used for the welcome message to new users.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The type of configuration for creating a new user profile.</p>\"\
    },\
    \"AdminCreateUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where the user will be created.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.</p>\"\
        },\
        \"UserAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than <code>Username</code>. However, any attributes that you specify as required (in <a href=\\\"API_CreateUserPool.html\\\">CreateUserPool</a> or in the <b>Attributes</b> tab of the console) must be supplied either by you (in your call to <code>AdminCreateUser</code>) or by the user (when he or she signs up in response to your welcome message).</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>To send a message inviting the user to sign up, you must specify the user's email address or phone number. This can be done in your call to AdminCreateUser or in the <b>Users</b> tab of the Amazon Cognito console for managing your user pools.</p> <p>In your call to <code>AdminCreateUser</code>, you can set the <code>email_verified</code> attribute to <code>True</code>, and you can set the <code>phone_number_verified</code> attribute to <code>True</code>. (You can also do this by calling <a href=\\\"API_AdminUpdateUserAttributes.html\\\">AdminUpdateUserAttributes</a>.)</p> <ul> <li> <p> <b>email</b>: The email address of the user to whom the message that contains the code and username will be sent. Required if the <code>email_verified</code> attribute is set to <code>True</code>, or if <code>\\\"EMAIL\\\"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> <li> <p> <b>phone_number</b>: The phone number of the user to whom the message that contains the code and username will be sent. Required if the <code>phone_number_verified</code> attribute is set to <code>True</code>, or if <code>\\\"SMS\\\"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> </ul>\"\
        },\
        \"ValidationData\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. For example, you might choose to allow or disallow user sign-up based on the user's domain.</p> <p>To configure custom validation, you must create a Pre Sign-up Lambda trigger for the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the validation data and uses it in the validation process.</p> <p>The user's validation data is not persisted.</p>\"\
        },\
        \"TemporaryPassword\":{\
          \"shape\":\"PasswordType\",\
          \"documentation\":\"<p>The user's temporary password. This password must conform to the password policy that you specified when you created the user pool.</p> <p>The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins.</p> <p>This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you.</p> <p>The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>\\\"RESEND\\\"</code> for the <code>MessageAction</code> parameter.</p>\"\
        },\
        \"ForceAliasCreation\":{\
          \"shape\":\"ForceAliasCreation\",\
          \"documentation\":\"<p>This parameter is only used if the <code>phone_number_verified</code> or <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is ignored.</p> <p>If this parameter is set to <code>True</code> and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias.</p> <p>If this parameter is set to <code>False</code>, the API throws an <code>AliasExistsException</code> error if the alias already exists. The default value is <code>False</code>.</p>\"\
        },\
        \"MessageAction\":{\
          \"shape\":\"MessageActionType\",\
          \"documentation\":\"<p>Set to <code>\\\"RESEND\\\"</code> to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to <code>\\\"SUPPRESS\\\"</code> to suppress sending the message. Only one value can be specified.</p>\"\
        },\
        \"DesiredDeliveryMediums\":{\
          \"shape\":\"DeliveryMediumListType\",\
          \"documentation\":\"<p>Specify <code>\\\"EMAIL\\\"</code> if email will be used to send the welcome message. Specify <code>\\\"SMS\\\"</code> if the phone number will be used. The default value is <code>\\\"SMS\\\"</code>. More than one value can be specified.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to create a user in the specified user pool.</p>\"\
    },\
    \"AdminCreateUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"User\":{\
          \"shape\":\"UserType\",\
          \"documentation\":\"<p>The newly created user.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to create the user.</p>\"\
    },\
    \"AdminCreateUserUnusedAccountValidityDaysType\":{\
      \"type\":\"integer\",\
      \"max\":90,\
      \"min\":0\
    },\
    \"AdminDeleteUserAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"UserAttributeNames\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to delete user attributes.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user from which you would like to delete attributes.</p>\"\
        },\
        \"UserAttributeNames\":{\
          \"shape\":\"AttributeNameListType\",\
          \"documentation\":\"<p>An array of strings representing the user attribute names you wish to delete.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to delete user attributes as an administrator.</p>\"\
    },\
    \"AdminDeleteUserAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response received from the server for a request to delete user attributes.</p>\"\
    },\
    \"AdminDeleteUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to delete the user.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to delete.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to delete a user as an administrator.</p>\"\
    },\
    \"AdminDisableProviderForUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"User\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"User\":{\
          \"shape\":\"ProviderUserIdentifierType\",\
          \"documentation\":\"<p>The user to be disabled.</p>\"\
        }\
      }\
    },\
    \"AdminDisableProviderForUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      }\
    },\
    \"AdminDisableUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to disable the user.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to disable.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to disable any user as an administrator.</p>\"\
    },\
    \"AdminDisableUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response received from the server to disable the user as an administrator.</p>\"\
    },\
    \"AdminEnableUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to enable the user.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to enable.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request that enables the user as an administrator.</p>\"\
    },\
    \"AdminEnableUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server for the request to enable a user as an administrator.</p>\"\
    },\
    \"AdminForgetDeviceRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"DeviceKey\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name.</p>\"\
        },\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Sends the forgot device request, as an administrator.</p>\"\
    },\
    \"AdminGetDeviceRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"DeviceKey\",\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to get the device, as an administrator.</p>\"\
    },\
    \"AdminGetDeviceResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"Device\"],\
      \"members\":{\
        \"Device\":{\
          \"shape\":\"DeviceType\",\
          \"documentation\":\"<p>The device.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Gets the device response, as an administrator.</p>\"\
    },\
    \"AdminGetUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to get information about the user.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to retrieve.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to get the specified user as an administrator.</p>\"\
    },\
    \"AdminGetUserResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"Username\"],\
      \"members\":{\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user about whom you are receiving information.</p>\"\
        },\
        \"UserAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>An array of name-value pairs representing user attributes.</p>\"\
        },\
        \"UserCreateDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user was created.</p>\"\
        },\
        \"UserLastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user was last modified.</p>\"\
        },\
        \"Enabled\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Indicates that the status is enabled.</p>\"\
        },\
        \"UserStatus\":{\
          \"shape\":\"UserStatusType\",\
          \"documentation\":\"<p>The user status. Can be one of the following:</p> <ul> <li> <p>UNCONFIRMED - User has been created but not confirmed.</p> </li> <li> <p>CONFIRMED - User has been confirmed.</p> </li> <li> <p>ARCHIVED - User is no longer active.</p> </li> <li> <p>COMPROMISED - User is disabled due to a potential security threat.</p> </li> <li> <p>UNKNOWN - User status is not known.</p> </li> </ul>\"\
        },\
        \"MFAOptions\":{\
          \"shape\":\"MFAOptionListType\",\
          \"documentation\":\"<p>Specifies the options for MFA (e.g., email or phone number).</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server from the request to get the specified user as an administrator.</p>\"\
    },\
    \"AdminInitiateAuthRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ClientId\",\
        \"AuthFlow\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The ID of the Amazon Cognito user pool.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID.</p>\"\
        },\
        \"AuthFlow\":{\
          \"shape\":\"AuthFlowType\",\
          \"documentation\":\"<p>The authentication flow for this call to execute. The API action will depend on this value. For example:</p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and <code>SRP_A</code> and return the SRP variables to be used for next challenge execution.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.</p> </li> </ul>\"\
        },\
        \"AuthParameters\":{\
          \"shape\":\"AuthParametersType\",\
          \"documentation\":\"<p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>REFRESH_TOKEN</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>PASSWORD</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>\"\
        },\
        \"ClientMetadata\":{\
          \"shape\":\"ClientMetadataType\",\
          \"documentation\":\"<p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>Initiates the authorization request, as an administrator.</p>\"\
    },\
    \"AdminInitiateAuthResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ChallengeName\":{\
          \"shape\":\"ChallengeNameType\",\
          \"documentation\":\"<p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <ul> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: This is returned if you need to authenticate with <code>USERNAME</code> and <code>PASSWORD</code> directly. An app client must be enabled to use this flow.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>\"\
        },\
        \"Session\":{\
          \"shape\":\"SessionType\",\
          \"documentation\":\"<p>The session which should be passed both ways in challenge-response calls to the service. If <code>AdminInitiateAuth</code> or <code>AdminRespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>AdminRespondToAuthChallenge</code> API call.</p>\"\
        },\
        \"ChallengeParameters\":{\
          \"shape\":\"ChallengeParametersType\",\
          \"documentation\":\"<p>The challenge parameters. These are returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>AdminRespondToAuthChallenge</code>).</p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p> <p>The value of the <code>USER_IF_FOR_SRP</code> attribute will be the user's actual username, not an alias (such as email address or phone number), even if you specified an alias in your call to <code>AdminInitiateAuth</code>. This is because, in the <code>AdminRespondToAuthChallenge</code> API <code>ChallengeResponses</code>, the <code>USERNAME</code> attribute cannot be an alias.</p>\"\
        },\
        \"AuthenticationResult\":{\
          \"shape\":\"AuthenticationResultType\",\
          \"documentation\":\"<p>The result of the authentication response. This is only returned if the caller does not need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Initiates the authentication response, as an administrator.</p>\"\
    },\
    \"AdminLinkProviderForUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"DestinationUser\",\
        \"SourceUser\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"DestinationUser\":{\
          \"shape\":\"ProviderUserIdentifierType\",\
          \"documentation\":\"<p>The existing user in the user pool to be linked to the external identity provider user account. Can be a native (Username + Password) Cognito User Pools user or a federated user (for example, a SAML or Facebook user). If the user doesn't exist, an exception is thrown. This is the user that is returned when the new user (with the linked identity provider attribute) signs in.</p> <p>The <code>ProviderAttributeValue</code> for the <code>DestinationUser</code> must match the username for the user in the user pool. The <code>ProviderAttributeName</code> will always be ignored.</p>\"\
        },\
        \"SourceUser\":{\
          \"shape\":\"ProviderUserIdentifierType\",\
          \"documentation\":\"<p>An external identity provider account for a user who does not currently exist yet in the user pool. This user must be a federated user (for example, a SAML or Facebook user), not another native user.</p> <p>If the <code>SourceUser</code> is a federated social identity provider user (Facebook, Google, or Login with Amazon), you must set the <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>. For social identity providers, the <code>ProviderName</code> will be <code>Facebook</code>, <code>Google</code>, or <code>LoginWithAmazon</code>, and Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for <code>id</code>, <code>sub</code>, and <code>user_id</code>, respectively. The <code>ProviderAttributeValue</code> for the user must be the same value as the <code>id</code>, <code>sub</code>, or <code>user_id</code> value found in the social identity provider token.</p> <p/> <p>For SAML, the <code>ProviderAttributeName</code> can be any value that matches a claim in the SAML assertion. If you wish to link SAML users based on the subject of the SAML assertion, you should map the subject to a claim through the SAML identity provider and submit that claim name as the <code>ProviderAttributeName</code>. If you set <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>, Cognito will automatically parse the default unique identifier found in the subject from the SAML token.</p>\"\
        }\
      }\
    },\
    \"AdminLinkProviderForUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      }\
    },\
    \"AdminListDevicesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name.</p>\"\
        },\
        \"Limit\":{\
          \"shape\":\"QueryLimitType\",\
          \"documentation\":\"<p>The limit of the devices request.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"SearchPaginationTokenType\",\
          \"documentation\":\"<p>The pagination token.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to list devices, as an administrator.</p>\"\
    },\
    \"AdminListDevicesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Devices\":{\
          \"shape\":\"DeviceListType\",\
          \"documentation\":\"<p>The devices in the list of devices response.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"SearchPaginationTokenType\",\
          \"documentation\":\"<p>The pagination token.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Lists the device's response, as an administrator.</p>\"\
    },\
    \"AdminListGroupsForUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Username\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The username for the user.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Limit\":{\
          \"shape\":\"QueryLimitType\",\
          \"documentation\":\"<p>The limit of the request to list groups.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      }\
    },\
    \"AdminListGroupsForUserResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Groups\":{\
          \"shape\":\"GroupListType\",\
          \"documentation\":\"<p>The groups that the user belongs to.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      }\
    },\
    \"AdminRemoveUserFromGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"GroupName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The username for the user.</p>\"\
        },\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The group name.</p>\"\
        }\
      }\
    },\
    \"AdminResetUserPasswordRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to reset the user's password.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user whose password you wish to reset.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to reset a user's password as an administrator.</p>\"\
    },\
    \"AdminResetUserPasswordResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server to reset a user password as an administrator.</p>\"\
    },\
    \"AdminRespondToAuthChallengeRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ClientId\",\
        \"ChallengeName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The ID of the Amazon Cognito user pool.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID.</p>\"\
        },\
        \"ChallengeName\":{\
          \"shape\":\"ChallengeNameType\",\
          \"documentation\":\"<p>The challenge name. For more information, see <a href=\\\"API_AdminInitiateAuth.html\\\">AdminInitiateAuth</a>.</p>\"\
        },\
        \"ChallengeResponses\":{\
          \"shape\":\"ChallengeResponsesType\",\
          \"documentation\":\"<p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul> <p>The value of the <code>USERNAME</code> attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the <code>AdminInitiateAuth</code> response includes the actual username value in the <code>USERNAMEUSER_ID_FOR_SRP</code> attribute, even if you specified an alias in your call to <code>AdminInitiateAuth</code>.</p>\"\
        },\
        \"Session\":{\
          \"shape\":\"SessionType\",\
          \"documentation\":\"<p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>The request to respond to the authentication challenge, as an administrator.</p>\"\
    },\
    \"AdminRespondToAuthChallengeResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ChallengeName\":{\
          \"shape\":\"ChallengeNameType\",\
          \"documentation\":\"<p>The name of the challenge. For more information, see <a href=\\\"API_AdminInitiateAuth.html\\\">AdminInitiateAuth</a>.</p>\"\
        },\
        \"Session\":{\
          \"shape\":\"SessionType\",\
          \"documentation\":\"<p>The session which should be passed both ways in challenge-response calls to the service. If the <a href=\\\"API_InitiateAuth.html\\\">InitiateAuth</a> or <a href=\\\"API_RespondToAuthChallenge.html\\\">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>\"\
        },\
        \"ChallengeParameters\":{\
          \"shape\":\"ChallengeParametersType\",\
          \"documentation\":\"<p>The challenge parameters. For more information, see <a href=\\\"API_AdminInitiateAuth.html\\\">AdminInitiateAuth</a>.</p>\"\
        },\
        \"AuthenticationResult\":{\
          \"shape\":\"AuthenticationResultType\",\
          \"documentation\":\"<p>The result returned by the server in response to the authentication request.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Responds to the authentication challenge, as an administrator.</p>\"\
    },\
    \"AdminSetUserSettingsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"MFAOptions\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to set the user's settings, such as MFA options.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user for whom you wish to set user settings.</p>\"\
        },\
        \"MFAOptions\":{\
          \"shape\":\"MFAOptionListType\",\
          \"documentation\":\"<p>Specifies the options for MFA (e.g., email or phone number).</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to set user settings as an administrator.</p>\"\
    },\
    \"AdminSetUserSettingsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server to set user settings as an administrator.</p>\"\
    },\
    \"AdminUpdateDeviceStatusRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"DeviceKey\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name.</p>\"\
        },\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"DeviceRememberedStatus\":{\
          \"shape\":\"DeviceRememberedStatusType\",\
          \"documentation\":\"<p>The status indicating whether a device has been remembered or not.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The request to update the device status, as an administrator.</p>\"\
    },\
    \"AdminUpdateDeviceStatusResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The status response from the request to update the device, as an administrator.</p>\"\
    },\
    \"AdminUpdateUserAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\",\
        \"UserAttributes\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to update user attributes.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user for whom you want to update user attributes.</p>\"\
        },\
        \"UserAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to update the user's attributes as an administrator.</p>\"\
    },\
    \"AdminUpdateUserAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server for the request to update user attributes as an administrator.</p>\"\
    },\
    \"AdminUserGlobalSignOutRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The request to sign out of all devices, as an administrator.</p>\"\
    },\
    \"AdminUserGlobalSignOutResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The global sign-out response, as an administrator.</p>\"\
    },\
    \"AliasAttributeType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"phone_number\",\
        \"email\",\
        \"preferred_username\"\
      ]\
    },\
    \"AliasAttributesListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"AliasAttributeType\"}\
    },\
    \"AliasExistsException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message sent to the user when an alias exists.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.</p>\",\
      \"exception\":true\
    },\
    \"AnalyticsConfigurationType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ApplicationId\":{\"shape\":\"HexStringType\"},\
        \"RoleArn\":{\"shape\":\"ArnType\"},\
        \"ExternalId\":{\"shape\":\"StringType\"},\
        \"UserDataShared\":{\"shape\":\"BooleanType\"}\
      }\
    },\
    \"AnalyticsMetadataType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"AnalyticsEndpointId\":{\"shape\":\"StringType\"}\
      }\
    },\
    \"ArnType\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":20,\
      \"pattern\":\"arn:[\\\\w+=/,.@-]+:[\\\\w+=/,.@-]+:([\\\\w+=/,.@-]*)?:[0-9]+:[\\\\w+=/,.@-]+(:[\\\\w+=/,.@-]+)?(:[\\\\w+=/,.@-]+)?\"\
    },\
    \"AttributeDataType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"String\",\
        \"Number\",\
        \"DateTime\",\
        \"Boolean\"\
      ]\
    },\
    \"AttributeListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"AttributeType\"}\
    },\
    \"AttributeMappingKeyType\":{\
      \"type\":\"string\",\
      \"max\":32,\
      \"min\":1\
    },\
    \"AttributeMappingType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"AttributeMappingKeyType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"AttributeNameListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"AttributeNameType\"}\
    },\
    \"AttributeNameType\":{\
      \"type\":\"string\",\
      \"max\":32,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\"\
    },\
    \"AttributeType\":{\
      \"type\":\"structure\",\
      \"required\":[\"Name\"],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"AttributeNameType\",\
          \"documentation\":\"<p>The name of the attribute.</p>\"\
        },\
        \"Value\":{\
          \"shape\":\"AttributeValueType\",\
          \"documentation\":\"<p>The value of the attribute.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Specifies whether the attribute is standard or custom.</p>\"\
    },\
    \"AttributeValueType\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"sensitive\":true\
    },\
    \"AuthFlowType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"USER_SRP_AUTH\",\
        \"REFRESH_TOKEN_AUTH\",\
        \"REFRESH_TOKEN\",\
        \"CUSTOM_AUTH\",\
        \"ADMIN_NO_SRP_AUTH\"\
      ]\
    },\
    \"AuthParametersType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"StringType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"AuthenticationResultType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token of the authentication result.</p>\"\
        },\
        \"ExpiresIn\":{\
          \"shape\":\"IntegerType\",\
          \"documentation\":\"<p>The expiration period of the authentication result.</p>\"\
        },\
        \"TokenType\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The token type of the authentication result.</p>\"\
        },\
        \"RefreshToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The refresh token of the authentication result.</p>\"\
        },\
        \"IdToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The ID token of the authentication result.</p>\"\
        },\
        \"NewDeviceMetadata\":{\
          \"shape\":\"NewDeviceMetadataType\",\
          \"documentation\":\"<p>The new device metadata from an authentication result.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The result type of the authentication result.</p>\"\
    },\
    \"BooleanType\":{\"type\":\"boolean\"},\
    \"CSSType\":{\"type\":\"string\"},\
    \"CSSVersionType\":{\"type\":\"string\"},\
    \"CallbackURLsListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"RedirectUrlType\"},\
      \"max\":100,\
      \"min\":0\
    },\
    \"ChallengeNameType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SMS_MFA\",\
        \"PASSWORD_VERIFIER\",\
        \"CUSTOM_CHALLENGE\",\
        \"DEVICE_SRP_AUTH\",\
        \"DEVICE_PASSWORD_VERIFIER\",\
        \"ADMIN_NO_SRP_AUTH\",\
        \"NEW_PASSWORD_REQUIRED\"\
      ]\
    },\
    \"ChallengeParametersType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"StringType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"ChallengeResponsesType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"StringType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"ChangePasswordRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"PreviousPassword\",\
        \"ProposedPassword\",\
        \"AccessToken\"\
      ],\
      \"members\":{\
        \"PreviousPassword\":{\
          \"shape\":\"PasswordType\",\
          \"documentation\":\"<p>The old password in the change password request.</p>\"\
        },\
        \"ProposedPassword\":{\
          \"shape\":\"PasswordType\",\
          \"documentation\":\"<p>The new password in the change password request.</p>\"\
        },\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token in the change password request.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to change a user password.</p>\"\
    },\
    \"ChangePasswordResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The response from the server to the change password request.</p>\"\
    },\
    \"ClientIdType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\w+]+\",\
      \"sensitive\":true\
    },\
    \"ClientMetadataType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"StringType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"ClientNameType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\w\\\\s+=,.@-]+\"\
    },\
    \"ClientPermissionListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ClientPermissionType\"}\
    },\
    \"ClientPermissionType\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":1\
    },\
    \"ClientSecretType\":{\
      \"type\":\"string\",\
      \"max\":64,\
      \"min\":1,\
      \"pattern\":\"[\\\\w+]+\",\
      \"sensitive\":true\
    },\
    \"CodeDeliveryDetailsListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"CodeDeliveryDetailsType\"}\
    },\
    \"CodeDeliveryDetailsType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Destination\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The destination for the code delivery details.</p>\"\
        },\
        \"DeliveryMedium\":{\
          \"shape\":\"DeliveryMediumType\",\
          \"documentation\":\"<p>The delivery medium (email message or phone number).</p>\"\
        },\
        \"AttributeName\":{\
          \"shape\":\"AttributeNameType\",\
          \"documentation\":\"<p>The name of the attribute in the code delivery details type.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The type of code delivery details being returned from the server.</p>\"\
    },\
    \"CodeDeliveryFailureException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message sent when a verification code fails to deliver successfully.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a verification code fails to deliver successfully.</p>\",\
      \"exception\":true\
    },\
    \"CodeMismatchException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message provided when the code mismatch exception is thrown.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown if the provided code does not match what the server was expecting.</p>\",\
      \"exception\":true\
    },\
    \"CompletionMessageType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\w]+\"\
    },\
    \"ConcurrentModificationException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message provided when the concurrent exception is thrown.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown if two or more modifications are happening concurrently.</p>\",\
      \"exception\":true\
    },\
    \"ConfirmDeviceRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"AccessToken\",\
        \"DeviceKey\"\
      ],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token.</p>\"\
        },\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"DeviceSecretVerifierConfig\":{\
          \"shape\":\"DeviceSecretVerifierConfigType\",\
          \"documentation\":\"<p>The configuration of the device secret verifier.</p>\"\
        },\
        \"DeviceName\":{\
          \"shape\":\"DeviceNameType\",\
          \"documentation\":\"<p>The device name.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Confirms the device request.</p>\"\
    },\
    \"ConfirmDeviceResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserConfirmationNecessary\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Indicates whether the user confirmation is necessary to confirm the device response.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Confirms the device response.</p>\"\
    },\
    \"ConfirmForgotPasswordRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ClientId\",\
        \"Username\",\
        \"ConfirmationCode\",\
        \"Password\"\
      ],\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID of the app associated with the user pool.</p>\"\
        },\
        \"SecretHash\":{\
          \"shape\":\"SecretHashType\",\
          \"documentation\":\"<p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user for whom you want to enter a code to retrieve a forgotten password.</p>\"\
        },\
        \"ConfirmationCode\":{\
          \"shape\":\"ConfirmationCodeType\",\
          \"documentation\":\"<p>The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see <a href=\\\"API_ForgotPassword.html\\\">ForgotPassword</a> </p>\"\
        },\
        \"Password\":{\
          \"shape\":\"PasswordType\",\
          \"documentation\":\"<p>The password sent by a user's request to retrieve a forgotten password.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>The request representing the confirmation for a password reset.</p>\"\
    },\
    \"ConfirmForgotPasswordResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The response from the server that results from a user's request to retrieve a forgotten password.</p>\"\
    },\
    \"ConfirmSignUpRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ClientId\",\
        \"Username\",\
        \"ConfirmationCode\"\
      ],\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the app client associated with the user pool.</p>\"\
        },\
        \"SecretHash\":{\
          \"shape\":\"SecretHashType\",\
          \"documentation\":\"<p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user whose registration you wish to confirm.</p>\"\
        },\
        \"ConfirmationCode\":{\
          \"shape\":\"ConfirmationCodeType\",\
          \"documentation\":\"<p>The confirmation code sent by a user's request to confirm registration.</p>\"\
        },\
        \"ForceAliasCreation\":{\
          \"shape\":\"ForceAliasCreation\",\
          \"documentation\":\"<p>Boolean to be specified to force user confirmation irrespective of existing alias. By default set to <code>False</code>. If this parameter is set to <code>True</code> and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to <code>False</code>, the API will throw an <b>AliasExistsException</b> error.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>Represents the request to confirm registration of a user.</p>\"\
    },\
    \"ConfirmSignUpResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server for the registration confirmation.</p>\"\
    },\
    \"ConfirmationCodeType\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":1,\
      \"pattern\":\"[\\\\S]+\"\
    },\
    \"CreateGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"GroupName\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The name of the group. Must be unique.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"DescriptionType\",\
          \"documentation\":\"<p>A string containing the description of the group.</p>\"\
        },\
        \"RoleArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The role ARN for the group.</p>\"\
        },\
        \"Precedence\":{\
          \"shape\":\"PrecedenceType\",\
          \"documentation\":\"<p>A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. Zero is the highest precedence value. Groups with lower <code>Precedence</code> values take precedence over groups with higher or null <code>Precedence</code> values. If a user belongs to two or more groups, it is the group with the lowest precedence value whose role ARN will be used in the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the user's tokens.</p> <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither group takes precedence over the other. If two groups with the same <code>Precedence</code> have the same role ARN, that role is used in the <code>cognito:preferred_role</code> claim in tokens for users in each group. If the two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is not set in users' tokens.</p> <p>The default <code>Precedence</code> value is null.</p>\"\
        }\
      }\
    },\
    \"CreateGroupResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Group\":{\
          \"shape\":\"GroupType\",\
          \"documentation\":\"<p>The group object for the group.</p>\"\
        }\
      }\
    },\
    \"CreateIdentityProviderRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ProviderName\",\
        \"ProviderType\",\
        \"ProviderDetails\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameTypeV1\",\
          \"documentation\":\"<p>The identity provider name.</p>\"\
        },\
        \"ProviderType\":{\
          \"shape\":\"IdentityProviderTypeType\",\
          \"documentation\":\"<p>The identity provider type.</p>\"\
        },\
        \"ProviderDetails\":{\
          \"shape\":\"ProviderDetailsType\",\
          \"documentation\":\"<p>The identity provider details, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>\"\
        },\
        \"AttributeMapping\":{\
          \"shape\":\"AttributeMappingType\",\
          \"documentation\":\"<p>A mapping of identity provider attributes to standard and custom user pool attributes.</p>\"\
        },\
        \"IdpIdentifiers\":{\
          \"shape\":\"IdpIdentifiersListType\",\
          \"documentation\":\"<p>A list of identity provider identifiers.</p>\"\
        }\
      }\
    },\
    \"CreateIdentityProviderResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"IdentityProvider\"],\
      \"members\":{\
        \"IdentityProvider\":{\
          \"shape\":\"IdentityProviderType\",\
          \"documentation\":\"<p>The newly created identity provider object.</p>\"\
        }\
      }\
    },\
    \"CreateResourceServerRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Identifier\",\
        \"Name\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Identifier\":{\
          \"shape\":\"ResourceServerIdentifierType\",\
          \"documentation\":\"<p>A unique resource server identifier for the resource server. This could be an HTTPS endpoint where the resource server is located. For example, <code>https://my-weather-api.example.com</code>.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"ResourceServerNameType\",\
          \"documentation\":\"<p>A friendly name for the resource server.</p>\"\
        },\
        \"Scopes\":{\
          \"shape\":\"ResourceServerScopeListType\",\
          \"documentation\":\"<p>A list of scopes. Each scope is map, where the keys are <code>name</code> and <code>description</code>.</p>\"\
        }\
      }\
    },\
    \"CreateResourceServerResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"ResourceServer\"],\
      \"members\":{\
        \"ResourceServer\":{\
          \"shape\":\"ResourceServerType\",\
          \"documentation\":\"<p>The newly created resource server.</p>\"\
        }\
      }\
    },\
    \"CreateUserImportJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"JobName\",\
        \"UserPoolId\",\
        \"CloudWatchLogsRoleArn\"\
      ],\
      \"members\":{\
        \"JobName\":{\
          \"shape\":\"UserImportJobNameType\",\
          \"documentation\":\"<p>The job name for the user import job.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are being imported into.</p>\"\
        },\
        \"CloudWatchLogsRoleArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The role ARN for the Amazon CloudWatch Logging role for the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to create the user import job.</p>\"\
    },\
    \"CreateUserImportJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserImportJob\":{\
          \"shape\":\"UserImportJobType\",\
          \"documentation\":\"<p>The job object that represents the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to create the user import job.</p>\"\
    },\
    \"CreateUserPoolClientRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ClientName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to create a user pool client.</p>\"\
        },\
        \"ClientName\":{\
          \"shape\":\"ClientNameType\",\
          \"documentation\":\"<p>The client name for the user pool client you would like to create.</p>\"\
        },\
        \"GenerateSecret\":{\
          \"shape\":\"GenerateSecret\",\
          \"documentation\":\"<p>Boolean to specify whether you want to generate a secret for the user pool client being created.</p>\"\
        },\
        \"RefreshTokenValidity\":{\
          \"shape\":\"RefreshTokenValidityType\",\
          \"documentation\":\"<p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>\"\
        },\
        \"ReadAttributes\":{\
          \"shape\":\"ClientPermissionListType\",\
          \"documentation\":\"<p>The read attributes.</p>\"\
        },\
        \"WriteAttributes\":{\
          \"shape\":\"ClientPermissionListType\",\
          \"documentation\":\"<p>The write attributes.</p>\"\
        },\
        \"ExplicitAuthFlows\":{\
          \"shape\":\"ExplicitAuthFlowsListType\",\
          \"documentation\":\"<p>The explicit authentication flows.</p>\"\
        },\
        \"SupportedIdentityProviders\":{\
          \"shape\":\"SupportedIdentityProvidersListType\",\
          \"documentation\":\"<p>A list of provider names for the identity providers that are supported on this client.</p>\"\
        },\
        \"CallbackURLs\":{\
          \"shape\":\"CallbackURLsListType\",\
          \"documentation\":\"<p>A list of allowed callback URLs for the identity providers.</p>\"\
        },\
        \"LogoutURLs\":{\
          \"shape\":\"LogoutURLsListType\",\
          \"documentation\":\"<p>A list of allowed logout URLs for the identity providers.</p>\"\
        },\
        \"DefaultRedirectURI\":{\
          \"shape\":\"RedirectUrlType\",\
          \"documentation\":\"<p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>\"\
        },\
        \"AllowedOAuthFlows\":{\
          \"shape\":\"OAuthFlowsType\",\
          \"documentation\":\"<p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>\"\
        },\
        \"AllowedOAuthScopes\":{\
          \"shape\":\"ScopeListType\",\
          \"documentation\":\"<p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>\\\"phone\\\"</code>, <code>\\\"email\\\"</code>, <code>\\\"openid\\\"</code>, and <code>\\\"Cognito\\\"</code>.</p>\"\
        },\
        \"AllowedOAuthFlowsUserPoolClient\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Set to <code>True</code> if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>\"\
        },\
        \"AnalyticsConfiguration\":{\"shape\":\"AnalyticsConfigurationType\"}\
      },\
      \"documentation\":\"<p>Represents the request to create a user pool client.</p>\"\
    },\
    \"CreateUserPoolClientResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolClient\":{\
          \"shape\":\"UserPoolClientType\",\
          \"documentation\":\"<p>The user pool client that was just created.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to create a user pool client.</p>\"\
    },\
    \"CreateUserPoolDomainRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Domain\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"Domain\":{\
          \"shape\":\"DomainType\",\
          \"documentation\":\"<p>The domain string.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        }\
      }\
    },\
    \"CreateUserPoolDomainResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      }\
    },\
    \"CreateUserPoolRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"PoolName\"],\
      \"members\":{\
        \"PoolName\":{\
          \"shape\":\"UserPoolNameType\",\
          \"documentation\":\"<p>A string used to name the user pool.</p>\"\
        },\
        \"Policies\":{\
          \"shape\":\"UserPoolPolicyType\",\
          \"documentation\":\"<p>The policies associated with the new user pool.</p>\"\
        },\
        \"LambdaConfig\":{\
          \"shape\":\"LambdaConfigType\",\
          \"documentation\":\"<p>The Lambda trigger configuration information for the new user pool.</p>\"\
        },\
        \"AutoVerifiedAttributes\":{\
          \"shape\":\"VerifiedAttributesListType\",\
          \"documentation\":\"<p>The attributes to be auto-verified. Possible values: <b>email</b>, <b>phone_number</b>.</p>\"\
        },\
        \"AliasAttributes\":{\
          \"shape\":\"AliasAttributesListType\",\
          \"documentation\":\"<p>Attributes supported as an alias for this user pool. Possible values: <b>phone_number</b>, <b>email</b>, or <b>preferred_username</b>.</p>\"\
        },\
        \"UsernameAttributes\":{\
          \"shape\":\"UsernameAttributesListType\",\
          \"documentation\":\"<p>Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.</p>\"\
        },\
        \"SmsVerificationMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>A string representing the SMS verification message.</p>\"\
        },\
        \"EmailVerificationMessage\":{\
          \"shape\":\"EmailVerificationMessageType\",\
          \"documentation\":\"<p>A string representing the email verification message.</p>\"\
        },\
        \"EmailVerificationSubject\":{\
          \"shape\":\"EmailVerificationSubjectType\",\
          \"documentation\":\"<p>A string representing the email verification subject.</p>\"\
        },\
        \"VerificationMessageTemplate\":{\
          \"shape\":\"VerificationMessageTemplateType\",\
          \"documentation\":\"<p>The template for the verification message that the user sees when the app requests permission to access the user's information.</p>\"\
        },\
        \"SmsAuthenticationMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>A string representing the SMS authentication message.</p>\"\
        },\
        \"MfaConfiguration\":{\
          \"shape\":\"UserPoolMfaType\",\
          \"documentation\":\"<p>Specifies MFA configuration details.</p>\"\
        },\
        \"DeviceConfiguration\":{\
          \"shape\":\"DeviceConfigurationType\",\
          \"documentation\":\"<p>The device configuration.</p>\"\
        },\
        \"EmailConfiguration\":{\
          \"shape\":\"EmailConfigurationType\",\
          \"documentation\":\"<p>The email configuration.</p>\"\
        },\
        \"SmsConfiguration\":{\
          \"shape\":\"SmsConfigurationType\",\
          \"documentation\":\"<p>The SMS configuration.</p>\"\
        },\
        \"UserPoolTags\":{\
          \"shape\":\"UserPoolTagsType\",\
          \"documentation\":\"<p>The cost allocation tags for the user pool. For more information, see <a href=\\\"http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html\\\">Adding Cost Allocation Tags to Your User Pool</a> </p>\"\
        },\
        \"AdminCreateUserConfig\":{\
          \"shape\":\"AdminCreateUserConfigType\",\
          \"documentation\":\"<p>The configuration for <code>AdminCreateUser</code> requests.</p>\"\
        },\
        \"Schema\":{\
          \"shape\":\"SchemaAttributesListType\",\
          \"documentation\":\"<p>An array of schema attributes for the new user pool. These attributes can be standard or custom attributes.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to create a user pool.</p>\"\
    },\
    \"CreateUserPoolResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPool\":{\
          \"shape\":\"UserPoolType\",\
          \"documentation\":\"<p>A container for the user pool details.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server for the request to create a user pool.</p>\"\
    },\
    \"CustomAttributeNameType\":{\
      \"type\":\"string\",\
      \"max\":20,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\"\
    },\
    \"CustomAttributesListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"SchemaAttributeType\"},\
      \"max\":25,\
      \"min\":1\
    },\
    \"DateType\":{\"type\":\"timestamp\"},\
    \"DefaultEmailOptionType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"CONFIRM_WITH_LINK\",\
        \"CONFIRM_WITH_CODE\"\
      ]\
    },\
    \"DeleteGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"GroupName\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The name of the group.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        }\
      }\
    },\
    \"DeleteIdentityProviderRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ProviderName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameType\",\
          \"documentation\":\"<p>The identity provider name.</p>\"\
        }\
      }\
    },\
    \"DeleteResourceServerRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Identifier\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that hosts the resource server.</p>\"\
        },\
        \"Identifier\":{\
          \"shape\":\"ResourceServerIdentifierType\",\
          \"documentation\":\"<p>The identifier for the resource server.</p>\"\
        }\
      }\
    },\
    \"DeleteUserAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserAttributeNames\",\
        \"AccessToken\"\
      ],\
      \"members\":{\
        \"UserAttributeNames\":{\
          \"shape\":\"AttributeNameListType\",\
          \"documentation\":\"<p>An array of strings representing the user attribute names you wish to delete.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>\"\
        },\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token used in the request to delete user attributes.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to delete user attributes.</p>\"\
    },\
    \"DeleteUserAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server to delete user attributes.</p>\"\
    },\
    \"DeleteUserPoolClientRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ClientId\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to delete the client.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID of the app associated with the user pool.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to delete a user pool client.</p>\"\
    },\
    \"DeleteUserPoolDomainRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Domain\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"Domain\":{\
          \"shape\":\"DomainType\",\
          \"documentation\":\"<p>The domain string.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        }\
      }\
    },\
    \"DeleteUserPoolDomainResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      }\
    },\
    \"DeleteUserPoolRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool you want to delete.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to delete a user pool.</p>\"\
    },\
    \"DeleteUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"AccessToken\"],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token from a request to delete a user.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to delete a user.</p>\"\
    },\
    \"DeliveryMediumListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"DeliveryMediumType\"}\
    },\
    \"DeliveryMediumType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SMS\",\
        \"EMAIL\"\
      ]\
    },\
    \"DescribeIdentityProviderRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ProviderName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameType\",\
          \"documentation\":\"<p>The identity provider name.</p>\"\
        }\
      }\
    },\
    \"DescribeIdentityProviderResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"IdentityProvider\"],\
      \"members\":{\
        \"IdentityProvider\":{\
          \"shape\":\"IdentityProviderType\",\
          \"documentation\":\"<p>The identity provider that was deleted.</p>\"\
        }\
      }\
    },\
    \"DescribeResourceServerRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Identifier\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that hosts the resource server.</p>\"\
        },\
        \"Identifier\":{\
          \"shape\":\"ResourceServerIdentifierType\",\
          \"documentation\":\"<p>The identifier for the resource server</p>\"\
        }\
      }\
    },\
    \"DescribeResourceServerResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"ResourceServer\"],\
      \"members\":{\
        \"ResourceServer\":{\
          \"shape\":\"ResourceServerType\",\
          \"documentation\":\"<p>The resource server.</p>\"\
        }\
      }\
    },\
    \"DescribeUserImportJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"JobId\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are being imported into.</p>\"\
        },\
        \"JobId\":{\
          \"shape\":\"UserImportJobIdType\",\
          \"documentation\":\"<p>The job ID for the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to describe the user import job.</p>\"\
    },\
    \"DescribeUserImportJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserImportJob\":{\
          \"shape\":\"UserImportJobType\",\
          \"documentation\":\"<p>The job object that represents the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to describe the user import job.</p>\"\
    },\
    \"DescribeUserPoolClientRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ClientId\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool you want to describe.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID of the app associated with the user pool.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to describe a user pool client.</p>\"\
    },\
    \"DescribeUserPoolClientResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolClient\":{\
          \"shape\":\"UserPoolClientType\",\
          \"documentation\":\"<p>The user pool client from a server response to describe the user pool client.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server from a request to describe the user pool client.</p>\"\
    },\
    \"DescribeUserPoolDomainRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Domain\"],\
      \"members\":{\
        \"Domain\":{\
          \"shape\":\"DomainType\",\
          \"documentation\":\"<p>The domain string.</p>\"\
        }\
      }\
    },\
    \"DescribeUserPoolDomainResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DomainDescription\":{\
          \"shape\":\"DomainDescriptionType\",\
          \"documentation\":\"<p>A domain description object containing information about the domain.</p>\"\
        }\
      }\
    },\
    \"DescribeUserPoolRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool you want to describe.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to describe the user pool.</p>\"\
    },\
    \"DescribeUserPoolResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPool\":{\
          \"shape\":\"UserPoolType\",\
          \"documentation\":\"<p>The container of metadata returned by the server to describe the pool.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response to describe the user pool.</p>\"\
    },\
    \"DescriptionType\":{\
      \"type\":\"string\",\
      \"max\":2048\
    },\
    \"DeviceConfigurationType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ChallengeRequiredOnNewDevice\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Indicates whether a challenge is required on a new device. Only applicable to a new device.</p>\"\
        },\
        \"DeviceOnlyRememberedOnUserPrompt\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>If true, a device is only remembered on user prompt.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The type of configuration for the user pool's device tracking.</p>\"\
    },\
    \"DeviceKeyType\":{\
      \"type\":\"string\",\
      \"max\":55,\
      \"min\":1,\
      \"pattern\":\"[\\\\w-]+_[0-9a-f-]+\"\
    },\
    \"DeviceListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"DeviceType\"}\
    },\
    \"DeviceNameType\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"min\":1\
    },\
    \"DeviceRememberedStatusType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"remembered\",\
        \"not_remembered\"\
      ]\
    },\
    \"DeviceSecretVerifierConfigType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"PasswordVerifier\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The password verifier.</p>\"\
        },\
        \"Salt\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The salt.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The device verifier against which it will be authenticated.</p>\"\
    },\
    \"DeviceType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"DeviceAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>The device attributes.</p>\"\
        },\
        \"DeviceCreateDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The creation date of the device.</p>\"\
        },\
        \"DeviceLastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The last modified date of the device.</p>\"\
        },\
        \"DeviceLastAuthenticatedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date in which the device was last authenticated.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The device type.</p>\"\
    },\
    \"DomainDescriptionType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"AWSAccountId\":{\
          \"shape\":\"AWSAccountIdType\",\
          \"documentation\":\"<p>The AWS account ID for the user pool owner.</p>\"\
        },\
        \"Domain\":{\
          \"shape\":\"DomainType\",\
          \"documentation\":\"<p>The domain string.</p>\"\
        },\
        \"S3Bucket\":{\
          \"shape\":\"S3BucketType\",\
          \"documentation\":\"<p>The S3 bucket where the static files for this domain are stored.</p>\"\
        },\
        \"CloudFrontDistribution\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The ARN of the CloudFront distribution.</p>\"\
        },\
        \"Version\":{\
          \"shape\":\"DomainVersionType\",\
          \"documentation\":\"<p>The app version.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"DomainStatusType\",\
          \"documentation\":\"<p>The domain status.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for information about a domain.</p>\"\
    },\
    \"DomainStatusType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"CREATING\",\
        \"DELETING\",\
        \"UPDATING\",\
        \"ACTIVE\",\
        \"FAILED\"\
      ]\
    },\
    \"DomainType\":{\
      \"type\":\"string\",\
      \"max\":63,\
      \"min\":1,\
      \"pattern\":\"^[a-z0-9](?:[a-z0-9\\\\-]{0,61}[a-z0-9])?$\"\
    },\
    \"DomainVersionType\":{\
      \"type\":\"string\",\
      \"max\":20,\
      \"min\":1\
    },\
    \"DuplicateProviderException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\"shape\":\"MessageType\"}\
      },\
      \"documentation\":\"<p>This exception is thrown when the provider is already supported by the user pool.</p>\",\
      \"exception\":true\
    },\
    \"EmailAddressType\":{\
      \"type\":\"string\",\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+@[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\"\
    },\
    \"EmailConfigurationType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"SourceArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the email source.</p>\"\
        },\
        \"ReplyToEmailAddress\":{\
          \"shape\":\"EmailAddressType\",\
          \"documentation\":\"<p>The REPLY-TO email address.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The email configuration type.</p>\"\
    },\
    \"EmailVerificationMessageByLinkType\":{\
      \"type\":\"string\",\
      \"max\":20000,\
      \"min\":6,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s*]*\\\\{##[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s*]*##\\\\}[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s*]*\"\
    },\
    \"EmailVerificationMessageType\":{\
      \"type\":\"string\",\
      \"max\":20000,\
      \"min\":6,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s*]*\\\\{####\\\\}[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s*]*\"\
    },\
    \"EmailVerificationSubjectByLinkType\":{\
      \"type\":\"string\",\
      \"max\":140,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s]+\"\
    },\
    \"EmailVerificationSubjectType\":{\
      \"type\":\"string\",\
      \"max\":140,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}\\\\s]+\"\
    },\
    \"ExpiredCodeException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the expired code exception is thrown.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown if a code has expired.</p>\",\
      \"exception\":true\
    },\
    \"ExplicitAuthFlowsListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ExplicitAuthFlowsType\"}\
    },\
    \"ExplicitAuthFlowsType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"ADMIN_NO_SRP_AUTH\",\
        \"CUSTOM_AUTH_FLOW_ONLY\"\
      ]\
    },\
    \"ForceAliasCreation\":{\"type\":\"boolean\"},\
    \"ForgetDeviceRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"DeviceKey\"],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token for the forgotten device request.</p>\"\
        },\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to forget the device.</p>\"\
    },\
    \"ForgotPasswordRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ClientId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the client associated with the user pool.</p>\"\
        },\
        \"SecretHash\":{\
          \"shape\":\"SecretHashType\",\
          \"documentation\":\"<p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user for whom you want to enter a code to reset a forgotten password.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>Represents the request to reset a user's password.</p>\"\
    },\
    \"ForgotPasswordResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"CodeDeliveryDetails\":{\
          \"shape\":\"CodeDeliveryDetailsType\",\
          \"documentation\":\"<p>The code delivery details returned by the server in response to the request to reset a password.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Respresents the response from the server regarding the request to reset a password.</p>\"\
    },\
    \"GenerateSecret\":{\"type\":\"boolean\"},\
    \"GetCSVHeaderRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are to be imported into.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to get the header information for the .csv file for the user import job.</p>\"\
    },\
    \"GetCSVHeaderResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are to be imported into.</p>\"\
        },\
        \"CSVHeader\":{\
          \"shape\":\"ListOfStringTypes\",\
          \"documentation\":\"<p>The header information for the .csv file for the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to get the header information for the .csv file for the user import job.</p>\"\
    },\
    \"GetDeviceRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"DeviceKey\"],\
      \"members\":{\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to get the device.</p>\"\
    },\
    \"GetDeviceResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"Device\"],\
      \"members\":{\
        \"Device\":{\
          \"shape\":\"DeviceType\",\
          \"documentation\":\"<p>The device.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Gets the device response.</p>\"\
    },\
    \"GetGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"GroupName\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The name of the group.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        }\
      }\
    },\
    \"GetGroupResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Group\":{\
          \"shape\":\"GroupType\",\
          \"documentation\":\"<p>The group object for the group.</p>\"\
        }\
      }\
    },\
    \"GetIdentityProviderByIdentifierRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"IdpIdentifier\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"IdpIdentifier\":{\
          \"shape\":\"IdpIdentifierType\",\
          \"documentation\":\"<p>The identity provider ID.</p>\"\
        }\
      }\
    },\
    \"GetIdentityProviderByIdentifierResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"IdentityProvider\"],\
      \"members\":{\
        \"IdentityProvider\":{\
          \"shape\":\"IdentityProviderType\",\
          \"documentation\":\"<p>The identity provider object.</p>\"\
        }\
      }\
    },\
    \"GetUICustomizationRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The client ID for the client app.</p>\"\
        }\
      }\
    },\
    \"GetUICustomizationResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"UICustomization\"],\
      \"members\":{\
        \"UICustomization\":{\
          \"shape\":\"UICustomizationType\",\
          \"documentation\":\"<p>The UI customization information.</p>\"\
        }\
      }\
    },\
    \"GetUserAttributeVerificationCodeRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"AccessToken\",\
        \"AttributeName\"\
      ],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token returned by the server response to get the user attribute verification code.</p>\"\
        },\
        \"AttributeName\":{\
          \"shape\":\"AttributeNameType\",\
          \"documentation\":\"<p>The attribute name returned by the server response to get the user attribute verification code.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to get user attribute verification.</p>\"\
    },\
    \"GetUserAttributeVerificationCodeResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"CodeDeliveryDetails\":{\
          \"shape\":\"CodeDeliveryDetailsType\",\
          \"documentation\":\"<p>The code delivery details returned by the server in response to the request to get the user attribute verification code.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The verification code response returned by the server response to get the user attribute verification code.</p>\"\
    },\
    \"GetUserRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"AccessToken\"],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token returned by the server response to get information about the user.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to get information about the user.</p>\"\
    },\
    \"GetUserResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Username\",\
        \"UserAttributes\"\
      ],\
      \"members\":{\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to retrieve from the get user request.</p>\"\
        },\
        \"UserAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>\"\
        },\
        \"MFAOptions\":{\
          \"shape\":\"MFAOptionListType\",\
          \"documentation\":\"<p>Specifies the options for MFA (e.g., email or phone number).</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server from the request to get information about the user.</p>\"\
    },\
    \"GlobalSignOutRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"AccessToken\"],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to sign out all devices.</p>\"\
    },\
    \"GlobalSignOutResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The response to the request to sign out all devices.</p>\"\
    },\
    \"GroupExistsException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\"shape\":\"MessageType\"}\
      },\
      \"documentation\":\"<p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>\",\
      \"exception\":true\
    },\
    \"GroupListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"GroupType\"}\
    },\
    \"GroupNameType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\"\
    },\
    \"GroupType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The name of the group.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"DescriptionType\",\
          \"documentation\":\"<p>A string containing the description of the group.</p>\"\
        },\
        \"RoleArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The role ARN for the group.</p>\"\
        },\
        \"Precedence\":{\
          \"shape\":\"PrecedenceType\",\
          \"documentation\":\"<p>A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. If a user belongs to two or more groups, it is the group with the highest precedence whose role ARN will be used in the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the user's tokens. Groups with higher <code>Precedence</code> values take precedence over groups with lower <code>Precedence</code> values or with null <code>Precedence</code> values.</p> <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither group takes precedence over the other. If two groups with the same <code>Precedence</code> have the same role ARN, that role is used in the <code>cognito:preferred_role</code> claim in tokens for users in each group. If the two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is not set in users' tokens.</p> <p>The default <code>Precedence</code> value is null.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the group was last modified.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the group was created.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The group type.</p>\"\
    },\
    \"HexStringType\":{\
      \"type\":\"string\",\
      \"pattern\":\"^[0-9a-fA-F]+$\"\
    },\
    \"IdentityProviderType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameType\",\
          \"documentation\":\"<p>The identity provider name.</p>\"\
        },\
        \"ProviderType\":{\
          \"shape\":\"IdentityProviderTypeType\",\
          \"documentation\":\"<p>The identity provider type.</p>\"\
        },\
        \"ProviderDetails\":{\
          \"shape\":\"ProviderDetailsType\",\
          \"documentation\":\"<p>The identity provider details, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>\"\
        },\
        \"AttributeMapping\":{\
          \"shape\":\"AttributeMappingType\",\
          \"documentation\":\"<p>A mapping of identity provider attributes to standard and custom user pool attributes.</p>\"\
        },\
        \"IdpIdentifiers\":{\
          \"shape\":\"IdpIdentifiersListType\",\
          \"documentation\":\"<p>A list of identity provider identifiers.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the identity provider was last modified.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the identity provider was created.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for information about an identity provider.</p>\"\
    },\
    \"IdentityProviderTypeType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SAML\",\
        \"Facebook\",\
        \"Google\",\
        \"LoginWithAmazon\",\
        \"ActiveDirectory\"\
      ]\
    },\
    \"IdpIdentifierType\":{\
      \"type\":\"string\",\
      \"max\":40,\
      \"min\":1,\
      \"pattern\":\"[\\\\w\\\\s+=.@-]+\"\
    },\
    \"IdpIdentifiersListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"IdpIdentifierType\"},\
      \"max\":50,\
      \"min\":0\
    },\
    \"ImageFileType\":{\"type\":\"blob\"},\
    \"ImageUrlType\":{\"type\":\"string\"},\
    \"InitiateAuthRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"AuthFlow\",\
        \"ClientId\"\
      ],\
      \"members\":{\
        \"AuthFlow\":{\
          \"shape\":\"AuthFlowType\",\
          \"documentation\":\"<p>The authentication flow for this call to execute. The API action will depend on this value. For example: </p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and <code>SRP_A</code> and return the SRP variables to be used for next challenge execution.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> </ul> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>\"\
        },\
        \"AuthParameters\":{\
          \"shape\":\"AuthParametersType\",\
          \"documentation\":\"<p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>REFRESH_TOKEN</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>\"\
        },\
        \"ClientMetadata\":{\
          \"shape\":\"ClientMetadataType\",\
          \"documentation\":\"<p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>Initiates the authentication request.</p>\"\
    },\
    \"InitiateAuthResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ChallengeName\":{\
          \"shape\":\"ChallengeNameType\",\
          \"documentation\":\"<p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <p>Valid values include the following. Note that all of these challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable) in the parameters.</p> <ul> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>\"\
        },\
        \"Session\":{\
          \"shape\":\"SessionType\",\
          \"documentation\":\"<p>The session which should be passed both ways in challenge-response calls to the service. If the <a href=\\\"API_InitiateAuth.html\\\">InitiateAuth</a> or <a href=\\\"API_RespondToAuthChallenge.html\\\">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>\"\
        },\
        \"ChallengeParameters\":{\
          \"shape\":\"ChallengeParametersType\",\
          \"documentation\":\"<p>The challenge parameters. These are returned to you in the <code>InitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>RespondToAuthChallenge</code>). </p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p>\"\
        },\
        \"AuthenticationResult\":{\
          \"shape\":\"AuthenticationResultType\",\
          \"documentation\":\"<p>The result of the authentication response. This is only returned if the caller does not need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Initiates the authentication response.</p>\"\
    },\
    \"IntegerType\":{\"type\":\"integer\"},\
    \"InternalErrorException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when Amazon Cognito throws an internal error exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when Amazon Cognito encounters an internal error.</p>\",\
      \"exception\":true,\
      \"fault\":true\
    },\
    \"InvalidEmailRoleAccessPolicyException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when you have an unverified email address or the identity policy is not set on an email address that Amazon Cognito can access.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.</p>\",\
      \"exception\":true\
    },\
    \"InvalidLambdaResponseException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service throws an invalid AWS Lambda response exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.</p>\",\
      \"exception\":true\
    },\
    \"InvalidOAuthFlowException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\"shape\":\"MessageType\"}\
      },\
      \"documentation\":\"<p>This exception is thrown when the specified OAuth flow is invalid.</p>\",\
      \"exception\":true\
    },\
    \"InvalidParameterException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service throws an invalid parameter exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the Amazon Cognito service encounters an invalid parameter.</p>\",\
      \"exception\":true\
    },\
    \"InvalidPasswordException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service throws an invalid user password exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the Amazon Cognito service encounters an invalid password.</p>\",\
      \"exception\":true\
    },\
    \"InvalidSmsRoleAccessPolicyException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message retuned when the invalid SMS role access policy exception is thrown.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.</p>\",\
      \"exception\":true\
    },\
    \"InvalidSmsRoleTrustRelationshipException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the role trust relationship for the SMS message is invalid.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.</p>\",\
      \"exception\":true\
    },\
    \"InvalidUserPoolConfigurationException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the user pool configuration is invalid.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the user pool configuration is invalid.</p>\",\
      \"exception\":true\
    },\
    \"LambdaConfigType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"PreSignUp\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>A pre-registration AWS Lambda trigger.</p>\"\
        },\
        \"CustomMessage\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>A custom Message AWS Lambda trigger.</p>\"\
        },\
        \"PostConfirmation\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>A post-confirmation AWS Lambda trigger.</p>\"\
        },\
        \"PreAuthentication\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>A pre-authentication AWS Lambda trigger.</p>\"\
        },\
        \"PostAuthentication\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>A post-authentication AWS Lambda trigger.</p>\"\
        },\
        \"DefineAuthChallenge\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>Defines the authentication challenge.</p>\"\
        },\
        \"CreateAuthChallenge\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>Creates an authentication challenge.</p>\"\
        },\
        \"VerifyAuthChallengeResponse\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>Verifies the authentication challenge response.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Specifies the type of configuration for AWS Lambda triggers.</p>\"\
    },\
    \"LimitExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when Amazon Cognito throws a limit exceeded exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a user exceeds the limit for a requested AWS resource.</p>\",\
      \"exception\":true\
    },\
    \"ListDevicesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"AccessToken\"],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access tokens for the request to list devices.</p>\"\
        },\
        \"Limit\":{\
          \"shape\":\"QueryLimitType\",\
          \"documentation\":\"<p>The limit of the device request.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"SearchPaginationTokenType\",\
          \"documentation\":\"<p>The pagination token for the list request.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to list the devices.</p>\"\
    },\
    \"ListDevicesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Devices\":{\
          \"shape\":\"DeviceListType\",\
          \"documentation\":\"<p>The devices returned in the list devices response.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"SearchPaginationTokenType\",\
          \"documentation\":\"<p>The pagination token for the list device response.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response to list devices.</p>\"\
    },\
    \"ListGroupsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Limit\":{\
          \"shape\":\"QueryLimitType\",\
          \"documentation\":\"<p>The limit of the request to list groups.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      }\
    },\
    \"ListGroupsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Groups\":{\
          \"shape\":\"GroupListType\",\
          \"documentation\":\"<p>The group objects for the groups.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      }\
    },\
    \"ListIdentityProvidersRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"ListProvidersLimitType\",\
          \"documentation\":\"<p>The maximum number of identity providers to return.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>A pagination token.</p>\"\
        }\
      }\
    },\
    \"ListIdentityProvidersResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"Providers\"],\
      \"members\":{\
        \"Providers\":{\
          \"shape\":\"ProvidersListType\",\
          \"documentation\":\"<p>A list of identity provider objects.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>A pagination token.</p>\"\
        }\
      }\
    },\
    \"ListOfStringTypes\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"StringType\"}\
    },\
    \"ListProvidersLimitType\":{\
      \"type\":\"integer\",\
      \"max\":60,\
      \"min\":1\
    },\
    \"ListResourceServersLimitType\":{\
      \"type\":\"integer\",\
      \"max\":50,\
      \"min\":1\
    },\
    \"ListResourceServersRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"ListResourceServersLimitType\",\
          \"documentation\":\"<p>The maximum number of resource servers to return.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>A pagination token.</p>\"\
        }\
      }\
    },\
    \"ListResourceServersResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"ResourceServers\"],\
      \"members\":{\
        \"ResourceServers\":{\
          \"shape\":\"ResourceServersListType\",\
          \"documentation\":\"<p>The resource servers.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>A pagination token.</p>\"\
        }\
      }\
    },\
    \"ListUserImportJobsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"MaxResults\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are being imported into.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"PoolQueryLimitType\",\
          \"documentation\":\"<p>The maximum number of import jobs you want the request to return.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to <code>ListUserImportJobs</code>, which can be used to return the next set of import jobs in the list.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to list the user import jobs.</p>\"\
    },\
    \"ListUserImportJobsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserImportJobs\":{\
          \"shape\":\"UserImportJobsListType\",\
          \"documentation\":\"<p>The user import jobs.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>An identifier that can be used to return the next set of user import jobs in the list.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to list the user import jobs.</p>\"\
    },\
    \"ListUserPoolClientsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to list user pool clients.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"QueryLimit\",\
          \"documentation\":\"<p>The maximum number of results you want the request to return when listing the user pool clients.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to list the user pool clients.</p>\"\
    },\
    \"ListUserPoolClientsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolClients\":{\
          \"shape\":\"UserPoolClientListType\",\
          \"documentation\":\"<p>The user pool clients in the response that lists user pool clients.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server that lists user pool clients.</p>\"\
    },\
    \"ListUserPoolsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"MaxResults\"],\
      \"members\":{\
        \"NextToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"PoolQueryLimitType\",\
          \"documentation\":\"<p>The maximum number of results you want the request to return when listing the user pools.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to list user pools.</p>\"\
    },\
    \"ListUserPoolsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPools\":{\
          \"shape\":\"UserPoolListType\",\
          \"documentation\":\"<p>The user pools from the response to list users.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKeyType\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response to list user pools.</p>\"\
    },\
    \"ListUsersInGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"GroupName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The name of the group.</p>\"\
        },\
        \"Limit\":{\
          \"shape\":\"QueryLimitType\",\
          \"documentation\":\"<p>The limit of the request to list users.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      }\
    },\
    \"ListUsersInGroupResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Users\":{\
          \"shape\":\"UsersListType\",\
          \"documentation\":\"<p>The users returned in the request to list users.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"PaginationKey\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      }\
    },\
    \"ListUsersRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool on which the search should be performed.</p>\"\
        },\
        \"AttributesToGet\":{\
          \"shape\":\"SearchedAttributeNamesListType\",\
          \"documentation\":\"<p>An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is empty, all attributes are returned.</p>\"\
        },\
        \"Limit\":{\
          \"shape\":\"QueryLimitType\",\
          \"documentation\":\"<p>Maximum number of users to be returned.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"SearchPaginationTokenType\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        },\
        \"Filter\":{\
          \"shape\":\"UserFilterType\",\
          \"documentation\":\"<p>A filter string of the form \\\"<i>AttributeName</i> <i>Filter-Type</i> \\\"<i>AttributeValue</i>\\\"\\\". Quotation marks within the filter string must be escaped using the backslash (\\\\) character. For example, \\\"<code>family_name</code> = \\\\\\\"Reddy\\\\\\\"\\\".</p> <ul> <li> <p> <i>AttributeName</i>: The name of the attribute to search for. You can only search for one attribute at a time.</p> </li> <li> <p> <i>Filter-Type</i>: For an exact match, use =, for example, \\\"<code>given_name</code> = \\\\\\\"Jon\\\\\\\"\\\". For a prefix (\\\"starts with\\\") match, use ^=, for example, \\\"<code>given_name</code> ^= \\\\\\\"Jon\\\\\\\"\\\". </p> </li> <li> <p> <i>AttributeValue</i>: The attribute value that must be matched for each user.</p> </li> </ul> <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user pool.</p> <p>You can only search for the following standard attributes:</p> <ul> <li> <p> <code>username</code> (case-sensitive)</p> </li> <li> <p> <code>email</code> </p> </li> <li> <p> <code>phone_number</code> </p> </li> <li> <p> <code>name</code> </p> </li> <li> <p> <code>given_name</code> </p> </li> <li> <p> <code>family_name</code> </p> </li> <li> <p> <code>preferred_username</code> </p> </li> <li> <p> <code>cognito:user_status</code> (called <b>Enabled</b> in the Console) (case-sensitive)</p> </li> <li> <p> <code>status</code> (case-insensitive)</p> </li> </ul> <p>Custom attributes are not searchable.</p> <p>For more information, see <a href=\\\"http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api\\\">Searching for Users Using the ListUsers API</a> and <a href=\\\"http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples\\\">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer Guide</i>.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to list users.</p>\"\
    },\
    \"ListUsersResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Users\":{\
          \"shape\":\"UsersListType\",\
          \"documentation\":\"<p>The users returned in the request to list users.</p>\"\
        },\
        \"PaginationToken\":{\
          \"shape\":\"SearchPaginationTokenType\",\
          \"documentation\":\"<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The response from the request to list users.</p>\"\
    },\
    \"LogoutURLsListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"RedirectUrlType\"},\
      \"max\":100,\
      \"min\":0\
    },\
    \"LongType\":{\"type\":\"long\"},\
    \"MFAMethodNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when Amazon Cognito throws an MFA method not found exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.</p>\",\
      \"exception\":true\
    },\
    \"MFAOptionListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"MFAOptionType\"}\
    },\
    \"MFAOptionType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DeliveryMedium\":{\
          \"shape\":\"DeliveryMediumType\",\
          \"documentation\":\"<p>The delivery medium (email message or SMS message) to send the MFA code.</p>\"\
        },\
        \"AttributeName\":{\
          \"shape\":\"AttributeNameType\",\
          \"documentation\":\"<p>The attribute name of the MFA option type.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Specifies the different settings for multi-factor authentication (MFA).</p>\"\
    },\
    \"MessageActionType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"RESEND\",\
        \"SUPPRESS\"\
      ]\
    },\
    \"MessageTemplateType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"SMSMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>The message template for SMS messages.</p>\"\
        },\
        \"EmailMessage\":{\
          \"shape\":\"EmailVerificationMessageType\",\
          \"documentation\":\"<p>The message template for email messages.</p>\"\
        },\
        \"EmailSubject\":{\
          \"shape\":\"EmailVerificationSubjectType\",\
          \"documentation\":\"<p>The subject line for email messages.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The message template structure.</p>\"\
    },\
    \"MessageType\":{\"type\":\"string\"},\
    \"NewDeviceMetadataType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"DeviceGroupKey\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The device group key.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The new device metadata type.</p>\"\
    },\
    \"NotAuthorizedException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service returns a not authorized exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a user is not authorized.</p>\",\
      \"exception\":true\
    },\
    \"NumberAttributeConstraintsType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"MinValue\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The minimum value of an attribute that is of the number data type.</p>\"\
        },\
        \"MaxValue\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The maximum value of an attribute that is of the number data type.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The minimum and maximum value of an attribute that is of the number data type.</p>\"\
    },\
    \"OAuthFlowType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"code\",\
        \"implicit\",\
        \"client_credentials\"\
      ]\
    },\
    \"OAuthFlowsType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"OAuthFlowType\"},\
      \"max\":3,\
      \"min\":0\
    },\
    \"PaginationKey\":{\
      \"type\":\"string\",\
      \"min\":1,\
      \"pattern\":\"[\\\\S]+\"\
    },\
    \"PaginationKeyType\":{\
      \"type\":\"string\",\
      \"min\":1,\
      \"pattern\":\"[\\\\S]+\"\
    },\
    \"PasswordPolicyMinLengthType\":{\
      \"type\":\"integer\",\
      \"max\":99,\
      \"min\":6\
    },\
    \"PasswordPolicyType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"MinimumLength\":{\
          \"shape\":\"PasswordPolicyMinLengthType\",\
          \"documentation\":\"<p>The minimum length of the password policy that you have set. Cannot be less than 6.</p>\"\
        },\
        \"RequireUppercase\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>In the password policy that you have set, refers to whether you have required users to use at least one uppercase letter in their password.</p>\"\
        },\
        \"RequireLowercase\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>In the password policy that you have set, refers to whether you have required users to use at least one lowercase letter in their password.</p>\"\
        },\
        \"RequireNumbers\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>In the password policy that you have set, refers to whether you have required users to use at least one number in their password.</p>\"\
        },\
        \"RequireSymbols\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>In the password policy that you have set, refers to whether you have required users to use at least one symbol in their password.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The password policy type.</p>\"\
    },\
    \"PasswordResetRequiredException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when a password reset is required.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a password reset is required.</p>\",\
      \"exception\":true\
    },\
    \"PasswordType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":6,\
      \"pattern\":\"[\\\\S]+\",\
      \"sensitive\":true\
    },\
    \"PoolQueryLimitType\":{\
      \"type\":\"integer\",\
      \"max\":60,\
      \"min\":1\
    },\
    \"PreSignedUrlType\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":0\
    },\
    \"PrecedenceType\":{\
      \"type\":\"integer\",\
      \"min\":0\
    },\
    \"PreconditionNotMetException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when a precondition is not met.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a precondition is not met.</p>\",\
      \"exception\":true\
    },\
    \"ProviderDescription\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameType\",\
          \"documentation\":\"<p>The identity provider name.</p>\"\
        },\
        \"ProviderType\":{\
          \"shape\":\"IdentityProviderTypeType\",\
          \"documentation\":\"<p>The identity provider type.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the provider was last modified.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the provider was added to the user pool.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for identity provider details.</p>\"\
    },\
    \"ProviderDetailsType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"StringType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"ProviderNameType\":{\
      \"type\":\"string\",\
      \"max\":32,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\"\
    },\
    \"ProviderNameTypeV1\":{\
      \"type\":\"string\",\
      \"max\":32,\
      \"min\":1,\
      \"pattern\":\"[^_][\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}][^_]+\"\
    },\
    \"ProviderUserIdentifierType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameType\",\
          \"documentation\":\"<p>The name of the provider, for example, Facebook, Google, or Login with Amazon.</p>\"\
        },\
        \"ProviderAttributeName\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The name of the provider attribute to link to, for example, <code>NameID</code>.</p>\"\
        },\
        \"ProviderAttributeValue\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The value of the provider attribute to link to, for example, <code>xxxxx_account</code>.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for information about an identity provider for a user pool.</p>\"\
    },\
    \"ProvidersListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ProviderDescription\"},\
      \"max\":50,\
      \"min\":0\
    },\
    \"QueryLimit\":{\
      \"type\":\"integer\",\
      \"max\":60,\
      \"min\":1\
    },\
    \"QueryLimitType\":{\
      \"type\":\"integer\",\
      \"max\":60,\
      \"min\":0\
    },\
    \"RedirectUrlType\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\"\
    },\
    \"RefreshTokenValidityType\":{\
      \"type\":\"integer\",\
      \"max\":3650,\
      \"min\":0\
    },\
    \"ResendConfirmationCodeRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ClientId\",\
        \"Username\"\
      ],\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the client associated with the user pool.</p>\"\
        },\
        \"SecretHash\":{\
          \"shape\":\"SecretHashType\",\
          \"documentation\":\"<p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user to whom you wish to resend a confirmation code.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>Represents the request to resend the confirmation code.</p>\"\
    },\
    \"ResendConfirmationCodeResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"CodeDeliveryDetails\":{\
          \"shape\":\"CodeDeliveryDetailsType\",\
          \"documentation\":\"<p>The code delivery details returned by the server in response to the request to resend the confirmation code.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.</p>\"\
    },\
    \"ResourceNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service returns a resource not found exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the Amazon Cognito service cannot find the requested resource.</p>\",\
      \"exception\":true\
    },\
    \"ResourceServerIdentifierType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1,\
      \"pattern\":\"[\\\\x21\\\\x23-\\\\x5B\\\\x5D-\\\\x7E]+\"\
    },\
    \"ResourceServerNameType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1,\
      \"pattern\":\"[\\\\w\\\\s+=,.@-]+\"\
    },\
    \"ResourceServerScopeDescriptionType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1\
    },\
    \"ResourceServerScopeListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ResourceServerScopeType\"},\
      \"max\":25\
    },\
    \"ResourceServerScopeNameType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1,\
      \"pattern\":\"[\\\\x21\\\\x23-\\\\x2E\\\\x30-\\\\x5B\\\\x5D-\\\\x7E]+\"\
    },\
    \"ResourceServerScopeType\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ScopeName\",\
        \"ScopeDescription\"\
      ],\
      \"members\":{\
        \"ScopeName\":{\
          \"shape\":\"ResourceServerScopeNameType\",\
          \"documentation\":\"<p>The name of the scope.</p>\"\
        },\
        \"ScopeDescription\":{\
          \"shape\":\"ResourceServerScopeDescriptionType\",\
          \"documentation\":\"<p>A description of the scope.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A resource server scope.</p>\"\
    },\
    \"ResourceServerType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that hosts the resource server.</p>\"\
        },\
        \"Identifier\":{\
          \"shape\":\"ResourceServerIdentifierType\",\
          \"documentation\":\"<p>The identifier for the resource server.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"ResourceServerNameType\",\
          \"documentation\":\"<p>The name of the resource server.</p>\"\
        },\
        \"Scopes\":{\
          \"shape\":\"ResourceServerScopeListType\",\
          \"documentation\":\"<p>A list of scopes that are defined for the resource server.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for information about a resource server for a user pool.</p>\"\
    },\
    \"ResourceServersListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ResourceServerType\"}\
    },\
    \"RespondToAuthChallengeRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ClientId\",\
        \"ChallengeName\"\
      ],\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The app client ID.</p>\"\
        },\
        \"ChallengeName\":{\
          \"shape\":\"ChallengeNameType\",\
          \"documentation\":\"<p>The challenge name. For more information, see <a href=\\\"API_InitiateAuth.html\\\">InitiateAuth</a>.</p> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>\"\
        },\
        \"Session\":{\
          \"shape\":\"SessionType\",\
          \"documentation\":\"<p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>\"\
        },\
        \"ChallengeResponses\":{\
          \"shape\":\"ChallengeResponsesType\",\
          \"documentation\":\"<p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>The request to respond to an authentication challenge.</p>\"\
    },\
    \"RespondToAuthChallengeResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ChallengeName\":{\
          \"shape\":\"ChallengeNameType\",\
          \"documentation\":\"<p>The challenge name. For more information, see <a href=\\\"API_InitiateAuth.html\\\">InitiateAuth</a>.</p>\"\
        },\
        \"Session\":{\
          \"shape\":\"SessionType\",\
          \"documentation\":\"<p>The session which should be passed both ways in challenge-response calls to the service. If the <a href=\\\"API_InitiateAuth.html\\\">InitiateAuth</a> or <a href=\\\"API_RespondToAuthChallenge.html\\\">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>\"\
        },\
        \"ChallengeParameters\":{\
          \"shape\":\"ChallengeParametersType\",\
          \"documentation\":\"<p>The challenge parameters. For more information, see <a href=\\\"API_InitiateAuth.html\\\">InitiateAuth</a>.</p>\"\
        },\
        \"AuthenticationResult\":{\
          \"shape\":\"AuthenticationResultType\",\
          \"documentation\":\"<p>The result returned by the server in response to the request to respond to the authentication challenge.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The response to respond to the authentication challenge.</p>\"\
    },\
    \"S3BucketType\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"min\":3,\
      \"pattern\":\"^[0-9A-Za-z\\\\.\\\\-_]*(?<!\\\\.)$\"\
    },\
    \"SchemaAttributeType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"CustomAttributeNameType\",\
          \"documentation\":\"<p>A schema attribute of the name type.</p>\"\
        },\
        \"AttributeDataType\":{\
          \"shape\":\"AttributeDataType\",\
          \"documentation\":\"<p>The attribute data type.</p>\"\
        },\
        \"DeveloperOnlyAttribute\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Specifies whether the attribute type is developer only.</p>\",\
          \"box\":true\
        },\
        \"Mutable\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Specifies whether the attribute can be changed once it has been created.</p>\",\
          \"box\":true\
        },\
        \"Required\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Specifies whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.</p>\",\
          \"box\":true\
        },\
        \"NumberAttributeConstraints\":{\
          \"shape\":\"NumberAttributeConstraintsType\",\
          \"documentation\":\"<p>Specifies the constraints for an attribute of the number type.</p>\"\
        },\
        \"StringAttributeConstraints\":{\
          \"shape\":\"StringAttributeConstraintsType\",\
          \"documentation\":\"<p>Specifies the constraints for an attribute of the string type.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Contains information about the schema attribute.</p>\"\
    },\
    \"SchemaAttributesListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"SchemaAttributeType\"},\
      \"max\":50,\
      \"min\":1\
    },\
    \"ScopeDoesNotExistException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\"shape\":\"MessageType\"}\
      },\
      \"documentation\":\"<p>This exception is thrown when the specified scope does not exist.</p>\",\
      \"exception\":true\
    },\
    \"ScopeListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ScopeType\"},\
      \"max\":25\
    },\
    \"ScopeType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1,\
      \"pattern\":\"[\\\\x21\\\\x23-\\\\x5B\\\\x5D-\\\\x7E]+\"\
    },\
    \"SearchPaginationTokenType\":{\
      \"type\":\"string\",\
      \"min\":1,\
      \"pattern\":\"[\\\\S]+\"\
    },\
    \"SearchedAttributeNamesListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"AttributeNameType\"}\
    },\
    \"SecretHashType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\w+=/]+\",\
      \"sensitive\":true\
    },\
    \"SessionType\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":20\
    },\
    \"SetUICustomizationRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The client ID for the client app.</p>\"\
        },\
        \"CSS\":{\
          \"shape\":\"CSSType\",\
          \"documentation\":\"<p>The CSS values in the UI customization.</p>\"\
        },\
        \"ImageFile\":{\
          \"shape\":\"ImageFileType\",\
          \"documentation\":\"<p>The uploaded logo image for the UI customization.</p>\"\
        }\
      }\
    },\
    \"SetUICustomizationResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"UICustomization\"],\
      \"members\":{\
        \"UICustomization\":{\
          \"shape\":\"UICustomizationType\",\
          \"documentation\":\"<p>The UI customization information.</p>\"\
        }\
      }\
    },\
    \"SetUserSettingsRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"AccessToken\",\
        \"MFAOptions\"\
      ],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token for the set user settings request.</p>\"\
        },\
        \"MFAOptions\":{\
          \"shape\":\"MFAOptionListType\",\
          \"documentation\":\"<p>Specifies the options for MFA (e.g., email or phone number).</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to set user settings.</p>\"\
    },\
    \"SetUserSettingsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The response from the server for a set user settings request.</p>\"\
    },\
    \"SignUpRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"ClientId\",\
        \"Username\",\
        \"Password\"\
      ],\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the client associated with the user pool.</p>\"\
        },\
        \"SecretHash\":{\
          \"shape\":\"SecretHashType\",\
          \"documentation\":\"<p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>\"\
        },\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to register.</p>\"\
        },\
        \"Password\":{\
          \"shape\":\"PasswordType\",\
          \"documentation\":\"<p>The password of the user you wish to register.</p>\"\
        },\
        \"UserAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>\"\
        },\
        \"ValidationData\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>The validation data in the request to register a user.</p>\"\
        },\
        \"AnalyticsMetadata\":{\"shape\":\"AnalyticsMetadataType\"}\
      },\
      \"documentation\":\"<p>Represents the request to register a user.</p>\"\
    },\
    \"SignUpResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserConfirmed\",\
        \"UserSub\"\
      ],\
      \"members\":{\
        \"UserConfirmed\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>A response from the server indicating that a user registration has been confirmed.</p>\"\
        },\
        \"CodeDeliveryDetails\":{\
          \"shape\":\"CodeDeliveryDetailsType\",\
          \"documentation\":\"<p>The code delivery details returned by the server response to the user registration request.</p>\"\
        },\
        \"UserSub\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The UUID of the authenticated user. This is not the same as <code>username</code>.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The response from the server for a registration request.</p>\"\
    },\
    \"SmsConfigurationType\":{\
      \"type\":\"structure\",\
      \"required\":[\"SnsCallerArn\"],\
      \"members\":{\
        \"SnsCallerArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) caller.</p>\"\
        },\
        \"ExternalId\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The external ID.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The SMS configuration type.</p>\"\
    },\
    \"SmsVerificationMessageType\":{\
      \"type\":\"string\",\
      \"max\":140,\
      \"min\":6,\
      \"pattern\":\".*\\\\{####\\\\}.*\"\
    },\
    \"StartUserImportJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"JobId\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are being imported into.</p>\"\
        },\
        \"JobId\":{\
          \"shape\":\"UserImportJobIdType\",\
          \"documentation\":\"<p>The job ID for the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to start the user import job.</p>\"\
    },\
    \"StartUserImportJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserImportJob\":{\
          \"shape\":\"UserImportJobType\",\
          \"documentation\":\"<p>The job object that represents the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to start the user import job.</p>\"\
    },\
    \"StatusType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"Enabled\",\
        \"Disabled\"\
      ]\
    },\
    \"StopUserImportJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"JobId\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are being imported into.</p>\"\
        },\
        \"JobId\":{\
          \"shape\":\"UserImportJobIdType\",\
          \"documentation\":\"<p>The job ID for the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to stop the user import job.</p>\"\
    },\
    \"StopUserImportJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserImportJob\":{\
          \"shape\":\"UserImportJobType\",\
          \"documentation\":\"<p>The job object that represents the user import job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to stop the user import job.</p>\"\
    },\
    \"StringAttributeConstraintsType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"MinLength\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The minimum length of an attribute value of the string type.</p>\"\
        },\
        \"MaxLength\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The maximum length of an attribute value of the string type.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The type of constraints associated with an attribute of the string type.</p>\"\
    },\
    \"StringType\":{\"type\":\"string\"},\
    \"SupportedIdentityProvidersListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ProviderNameType\"}\
    },\
    \"TokenModelType\":{\
      \"type\":\"string\",\
      \"pattern\":\"[A-Za-z0-9-_=.]+\",\
      \"sensitive\":true\
    },\
    \"TooManyFailedAttemptsException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service returns a too many failed attempts exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the user has made too many failed attempts for a given action (e.g., sign in).</p>\",\
      \"exception\":true\
    },\
    \"TooManyRequestsException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service returns a too many requests exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the user has made too many requests for a given operation.</p>\",\
      \"exception\":true\
    },\
    \"UICustomizationType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The client ID for the client app.</p>\"\
        },\
        \"ImageUrl\":{\
          \"shape\":\"ImageUrlType\",\
          \"documentation\":\"<p>The logo image for the UI customization.</p>\"\
        },\
        \"CSS\":{\
          \"shape\":\"CSSType\",\
          \"documentation\":\"<p>The CSS values in the UI customization.</p>\"\
        },\
        \"CSSVersion\":{\
          \"shape\":\"CSSVersionType\",\
          \"documentation\":\"<p>The CSS version number.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The last-modified date for the UI customization.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The creation date for the UI customization.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for the UI customization information for a user pool's built-in app UI.</p>\"\
    },\
    \"UnexpectedLambdaException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service returns an unexpected AWS Lambda exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.</p>\",\
      \"exception\":true\
    },\
    \"UnsupportedIdentityProviderException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\"shape\":\"MessageType\"}\
      },\
      \"documentation\":\"<p>This exception is thrown when the specified identifier is not supported.</p>\",\
      \"exception\":true\
    },\
    \"UnsupportedUserStateException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the user is in an unsupported state.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The request failed because the user is in an unsupported state.</p>\",\
      \"exception\":true\
    },\
    \"UpdateDeviceStatusRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"AccessToken\",\
        \"DeviceKey\"\
      ],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token.</p>\"\
        },\
        \"DeviceKey\":{\
          \"shape\":\"DeviceKeyType\",\
          \"documentation\":\"<p>The device key.</p>\"\
        },\
        \"DeviceRememberedStatus\":{\
          \"shape\":\"DeviceRememberedStatusType\",\
          \"documentation\":\"<p>The status of whether a device is remembered.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to update the device status.</p>\"\
    },\
    \"UpdateDeviceStatusResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>The response to the request to update the device status.</p>\"\
    },\
    \"UpdateGroupRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"GroupName\",\
        \"UserPoolId\"\
      ],\
      \"members\":{\
        \"GroupName\":{\
          \"shape\":\"GroupNameType\",\
          \"documentation\":\"<p>The name of the group.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"DescriptionType\",\
          \"documentation\":\"<p>A string containing the new description of the group.</p>\"\
        },\
        \"RoleArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The new role ARN for the group. This is used for setting the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the token.</p>\"\
        },\
        \"Precedence\":{\
          \"shape\":\"PrecedenceType\",\
          \"documentation\":\"<p>The new precedence value for the group. For more information about this parameter, see <a href=\\\"API_CreateGroup.html\\\">CreateGroup</a>.</p>\"\
        }\
      }\
    },\
    \"UpdateGroupResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Group\":{\
          \"shape\":\"GroupType\",\
          \"documentation\":\"<p>The group object for the group.</p>\"\
        }\
      }\
    },\
    \"UpdateIdentityProviderRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ProviderName\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID.</p>\"\
        },\
        \"ProviderName\":{\
          \"shape\":\"ProviderNameType\",\
          \"documentation\":\"<p>The identity provider name.</p>\"\
        },\
        \"ProviderDetails\":{\
          \"shape\":\"ProviderDetailsType\",\
          \"documentation\":\"<p>The identity provider details to be updated, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>\"\
        },\
        \"AttributeMapping\":{\
          \"shape\":\"AttributeMappingType\",\
          \"documentation\":\"<p>The identity provider attribute mapping to be changed.</p>\"\
        },\
        \"IdpIdentifiers\":{\
          \"shape\":\"IdpIdentifiersListType\",\
          \"documentation\":\"<p>A list of identity provider identifiers.</p>\"\
        }\
      }\
    },\
    \"UpdateIdentityProviderResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"IdentityProvider\"],\
      \"members\":{\
        \"IdentityProvider\":{\
          \"shape\":\"IdentityProviderType\",\
          \"documentation\":\"<p>The identity provider object.</p>\"\
        }\
      }\
    },\
    \"UpdateResourceServerRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"Identifier\",\
        \"Name\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool.</p>\"\
        },\
        \"Identifier\":{\
          \"shape\":\"ResourceServerIdentifierType\",\
          \"documentation\":\"<p>The identifier for the resource server.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"ResourceServerNameType\",\
          \"documentation\":\"<p>The name of the resource server.</p>\"\
        },\
        \"Scopes\":{\
          \"shape\":\"ResourceServerScopeListType\",\
          \"documentation\":\"<p>The scope values to be set for the resource server.</p>\"\
        }\
      }\
    },\
    \"UpdateResourceServerResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\"ResourceServer\"],\
      \"members\":{\
        \"ResourceServer\":{\
          \"shape\":\"ResourceServerType\",\
          \"documentation\":\"<p>The resource server.</p>\"\
        }\
      }\
    },\
    \"UpdateUserAttributesRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserAttributes\",\
        \"AccessToken\"\
      ],\
      \"members\":{\
        \"UserAttributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>\"\
        },\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>The access token for the request to update user attributes.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to update user attributes.</p>\"\
    },\
    \"UpdateUserAttributesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"CodeDeliveryDetailsList\":{\
          \"shape\":\"CodeDeliveryDetailsListType\",\
          \"documentation\":\"<p>The code delivery details list from the server for the request to update user attributes.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server for the request to update user attributes.</p>\"\
    },\
    \"UpdateUserPoolClientRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"UserPoolId\",\
        \"ClientId\"\
      ],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to update the user pool client.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the client associated with the user pool.</p>\"\
        },\
        \"ClientName\":{\
          \"shape\":\"ClientNameType\",\
          \"documentation\":\"<p>The client name from the update user pool client request.</p>\"\
        },\
        \"RefreshTokenValidity\":{\
          \"shape\":\"RefreshTokenValidityType\",\
          \"documentation\":\"<p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>\"\
        },\
        \"ReadAttributes\":{\
          \"shape\":\"ClientPermissionListType\",\
          \"documentation\":\"<p>The read-only attributes of the user pool.</p>\"\
        },\
        \"WriteAttributes\":{\
          \"shape\":\"ClientPermissionListType\",\
          \"documentation\":\"<p>The writeable attributes of the user pool.</p>\"\
        },\
        \"ExplicitAuthFlows\":{\
          \"shape\":\"ExplicitAuthFlowsListType\",\
          \"documentation\":\"<p>Explicit authentication flows.</p>\"\
        },\
        \"SupportedIdentityProviders\":{\
          \"shape\":\"SupportedIdentityProvidersListType\",\
          \"documentation\":\"<p>A list of provider names for the identity providers that are supported on this client.</p>\"\
        },\
        \"CallbackURLs\":{\
          \"shape\":\"CallbackURLsListType\",\
          \"documentation\":\"<p>A list of allowed callback URLs for the identity providers.</p>\"\
        },\
        \"LogoutURLs\":{\
          \"shape\":\"LogoutURLsListType\",\
          \"documentation\":\"<p>A list of allowed logout URLs for the identity providers.</p>\"\
        },\
        \"DefaultRedirectURI\":{\
          \"shape\":\"RedirectUrlType\",\
          \"documentation\":\"<p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>\"\
        },\
        \"AllowedOAuthFlows\":{\
          \"shape\":\"OAuthFlowsType\",\
          \"documentation\":\"<p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>\"\
        },\
        \"AllowedOAuthScopes\":{\
          \"shape\":\"ScopeListType\",\
          \"documentation\":\"<p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>\\\"phone\\\"</code>, <code>\\\"email\\\"</code>, <code>\\\"openid\\\"</code>, and <code>\\\"Cognito\\\"</code>.</p>\"\
        },\
        \"AllowedOAuthFlowsUserPoolClient\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>\"\
        },\
        \"AnalyticsConfiguration\":{\"shape\":\"AnalyticsConfigurationType\"}\
      },\
      \"documentation\":\"<p>Represents the request to update the user pool client.</p>\"\
    },\
    \"UpdateUserPoolClientResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolClient\":{\
          \"shape\":\"UserPoolClientType\",\
          \"documentation\":\"<p>The user pool client value from the response from the server when an update user pool client request is made.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the response from the server to the request to update the user pool client.</p>\"\
    },\
    \"UpdateUserPoolRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"UserPoolId\"],\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool you want to update.</p>\"\
        },\
        \"Policies\":{\
          \"shape\":\"UserPoolPolicyType\",\
          \"documentation\":\"<p>A container with the policies you wish to update in a user pool.</p>\"\
        },\
        \"LambdaConfig\":{\
          \"shape\":\"LambdaConfigType\",\
          \"documentation\":\"<p>The AWS Lambda configuration information from the request to update the user pool.</p>\"\
        },\
        \"AutoVerifiedAttributes\":{\
          \"shape\":\"VerifiedAttributesListType\",\
          \"documentation\":\"<p>The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.</p>\"\
        },\
        \"SmsVerificationMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>A container with information about the SMS verification message.</p>\"\
        },\
        \"EmailVerificationMessage\":{\
          \"shape\":\"EmailVerificationMessageType\",\
          \"documentation\":\"<p>The contents of the email verification message.</p>\"\
        },\
        \"EmailVerificationSubject\":{\
          \"shape\":\"EmailVerificationSubjectType\",\
          \"documentation\":\"<p>The subject of the email verification message.</p>\"\
        },\
        \"VerificationMessageTemplate\":{\
          \"shape\":\"VerificationMessageTemplateType\",\
          \"documentation\":\"<p>The template for verification messages.</p>\"\
        },\
        \"SmsAuthenticationMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>The contents of the SMS authentication message.</p>\"\
        },\
        \"MfaConfiguration\":{\
          \"shape\":\"UserPoolMfaType\",\
          \"documentation\":\"<p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>\"\
        },\
        \"DeviceConfiguration\":{\
          \"shape\":\"DeviceConfigurationType\",\
          \"documentation\":\"<p>Device configuration.</p>\"\
        },\
        \"EmailConfiguration\":{\
          \"shape\":\"EmailConfigurationType\",\
          \"documentation\":\"<p>Email configuration.</p>\"\
        },\
        \"SmsConfiguration\":{\
          \"shape\":\"SmsConfigurationType\",\
          \"documentation\":\"<p>SMS configuration.</p>\"\
        },\
        \"UserPoolTags\":{\
          \"shape\":\"UserPoolTagsType\",\
          \"documentation\":\"<p>The cost allocation tags for the user pool. For more information, see <a href=\\\"http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html\\\">Adding Cost Allocation Tags to Your User Pool</a> </p>\"\
        },\
        \"AdminCreateUserConfig\":{\
          \"shape\":\"AdminCreateUserConfigType\",\
          \"documentation\":\"<p>The configuration for <code>AdminCreateUser</code> requests.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to update the user pool.</p>\"\
    },\
    \"UpdateUserPoolResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>Represents the response from the server when you make a request to update the user pool.</p>\"\
    },\
    \"UserFilterType\":{\
      \"type\":\"string\",\
      \"max\":256\
    },\
    \"UserImportInProgressException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the user pool has an import job running.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.</p>\",\
      \"exception\":true\
    },\
    \"UserImportJobIdType\":{\
      \"type\":\"string\",\
      \"max\":55,\
      \"min\":1,\
      \"pattern\":\"import-[0-9a-zA-Z-]+\"\
    },\
    \"UserImportJobNameType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\w\\\\s+=,.@-]+\"\
    },\
    \"UserImportJobStatusType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"Created\",\
        \"Pending\",\
        \"InProgress\",\
        \"Stopping\",\
        \"Expired\",\
        \"Stopped\",\
        \"Failed\",\
        \"Succeeded\"\
      ]\
    },\
    \"UserImportJobType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobName\":{\
          \"shape\":\"UserImportJobNameType\",\
          \"documentation\":\"<p>The job name for the user import job.</p>\"\
        },\
        \"JobId\":{\
          \"shape\":\"UserImportJobIdType\",\
          \"documentation\":\"<p>The job ID for the user import job.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool that the users are being imported into.</p>\"\
        },\
        \"PreSignedUrl\":{\
          \"shape\":\"PreSignedUrlType\",\
          \"documentation\":\"<p>The pre-signed URL to be used to upload the <code>.csv</code> file.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user import job was created.</p>\"\
        },\
        \"StartDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date when the user import job was started.</p>\"\
        },\
        \"CompletionDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date when the user import job was completed.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"UserImportJobStatusType\",\
          \"documentation\":\"<p>The status of the user import job. One of the following:</p> <ul> <li> <p> <code>Created</code> - The job was created but not started.</p> </li> <li> <p> <code>Pending</code> - A transition state. You have started the job, but it has not begun importing users yet.</p> </li> <li> <p> <code>InProgress</code> - The job has started, and users are being imported.</p> </li> <li> <p> <code>Stopping</code> - You have stopped the job, but the job has not stopped importing users yet.</p> </li> <li> <p> <code>Stopped</code> - You have stopped the job, and the job has stopped importing users.</p> </li> <li> <p> <code>Succeeded</code> - The job has completed successfully.</p> </li> <li> <p> <code>Failed</code> - The job has stopped due to an error.</p> </li> <li> <p> <code>Expired</code> - You created a job, but did not start the job within 24-48 hours. All data associated with the job was deleted, and the job cannot be started.</p> </li> </ul>\"\
        },\
        \"CloudWatchLogsRoleArn\":{\
          \"shape\":\"ArnType\",\
          \"documentation\":\"<p>The role ARN for the Amazon CloudWatch Logging role for the user import job. For more information, see \\\"Creating the CloudWatch Logs IAM Role\\\" in the Amazon Cognito Developer Guide.</p>\"\
        },\
        \"ImportedUsers\":{\
          \"shape\":\"LongType\",\
          \"documentation\":\"<p>The number of users that were successfully imported.</p>\"\
        },\
        \"SkippedUsers\":{\
          \"shape\":\"LongType\",\
          \"documentation\":\"<p>The number of users that were skipped.</p>\"\
        },\
        \"FailedUsers\":{\
          \"shape\":\"LongType\",\
          \"documentation\":\"<p>The number of users that could not be imported.</p>\"\
        },\
        \"CompletionMessage\":{\
          \"shape\":\"CompletionMessageType\",\
          \"documentation\":\"<p>The message returned when the user import job is completed.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The user import job type.</p>\"\
    },\
    \"UserImportJobsListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UserImportJobType\"},\
      \"max\":50,\
      \"min\":1\
    },\
    \"UserLambdaValidationException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when the Amazon Cognito service returns a user validation exception with the AWS Lambda service.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.</p>\",\
      \"exception\":true\
    },\
    \"UserNotConfirmedException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when a user is not confirmed successfully.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a user is not confirmed successfully.</p>\",\
      \"exception\":true\
    },\
    \"UserNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when a user is not found.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when a user is not found.</p>\",\
      \"exception\":true\
    },\
    \"UserPoolClientDescription\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the client associated with the user pool.</p>\"\
        },\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool where you want to describe the user pool client.</p>\"\
        },\
        \"ClientName\":{\
          \"shape\":\"ClientNameType\",\
          \"documentation\":\"<p>The client name from the user pool client description.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The description of the user pool client.</p>\"\
    },\
    \"UserPoolClientListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UserPoolClientDescription\"}\
    },\
    \"UserPoolClientType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"UserPoolId\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The user pool ID for the user pool client.</p>\"\
        },\
        \"ClientName\":{\
          \"shape\":\"ClientNameType\",\
          \"documentation\":\"<p>The client name from the user pool request of the client type.</p>\"\
        },\
        \"ClientId\":{\
          \"shape\":\"ClientIdType\",\
          \"documentation\":\"<p>The ID of the client associated with the user pool.</p>\"\
        },\
        \"ClientSecret\":{\
          \"shape\":\"ClientSecretType\",\
          \"documentation\":\"<p>The client secret from the user pool request of the client type.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user pool client was last modified.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user pool client was created.</p>\"\
        },\
        \"RefreshTokenValidity\":{\
          \"shape\":\"RefreshTokenValidityType\",\
          \"documentation\":\"<p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>\"\
        },\
        \"ReadAttributes\":{\
          \"shape\":\"ClientPermissionListType\",\
          \"documentation\":\"<p>The Read-only attributes.</p>\"\
        },\
        \"WriteAttributes\":{\
          \"shape\":\"ClientPermissionListType\",\
          \"documentation\":\"<p>The writeable attributes.</p>\"\
        },\
        \"ExplicitAuthFlows\":{\
          \"shape\":\"ExplicitAuthFlowsListType\",\
          \"documentation\":\"<p>The explicit authentication flows.</p>\"\
        },\
        \"SupportedIdentityProviders\":{\
          \"shape\":\"SupportedIdentityProvidersListType\",\
          \"documentation\":\"<p>A list of provider names for the identity providers that are supported on this client.</p>\"\
        },\
        \"CallbackURLs\":{\
          \"shape\":\"CallbackURLsListType\",\
          \"documentation\":\"<p>A list of allowed callback URLs for the identity providers.</p>\"\
        },\
        \"LogoutURLs\":{\
          \"shape\":\"LogoutURLsListType\",\
          \"documentation\":\"<p>A list of allowed logout URLs for the identity providers.</p>\"\
        },\
        \"DefaultRedirectURI\":{\
          \"shape\":\"RedirectUrlType\",\
          \"documentation\":\"<p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>\"\
        },\
        \"AllowedOAuthFlows\":{\
          \"shape\":\"OAuthFlowsType\",\
          \"documentation\":\"<p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>\"\
        },\
        \"AllowedOAuthScopes\":{\
          \"shape\":\"ScopeListType\",\
          \"documentation\":\"<p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>\\\"phone\\\"</code>, <code>\\\"email\\\"</code>, <code>\\\"openid\\\"</code>, and <code>\\\"Cognito\\\"</code>.</p>\"\
        },\
        \"AllowedOAuthFlowsUserPoolClient\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>\",\
          \"box\":true\
        },\
        \"AnalyticsConfiguration\":{\"shape\":\"AnalyticsConfigurationType\"}\
      },\
      \"documentation\":\"<p>Contains information about a user pool client.</p>\"\
    },\
    \"UserPoolDescriptionType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The ID in a user pool description.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"UserPoolNameType\",\
          \"documentation\":\"<p>The name in a user pool description.</p>\"\
        },\
        \"LambdaConfig\":{\
          \"shape\":\"LambdaConfigType\",\
          \"documentation\":\"<p>The AWS Lambda configuration information in a user pool description.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"StatusType\",\
          \"documentation\":\"<p>The user pool status in a user pool description.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user pool description was last modified.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user pool description was created.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A user pool description.</p>\"\
    },\
    \"UserPoolIdType\":{\
      \"type\":\"string\",\
      \"max\":55,\
      \"min\":1,\
      \"pattern\":\"[\\\\w-]+_[0-9a-zA-Z]+\"\
    },\
    \"UserPoolListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UserPoolDescriptionType\"}\
    },\
    \"UserPoolMfaType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"OFF\",\
        \"ON\",\
        \"OPTIONAL\"\
      ]\
    },\
    \"UserPoolNameType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\w\\\\s+=,.@-]+\"\
    },\
    \"UserPoolPolicyType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"PasswordPolicy\":{\
          \"shape\":\"PasswordPolicyType\",\
          \"documentation\":\"<p>A container for information about the user pool password policy.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The type of policy in a user pool.</p>\"\
    },\
    \"UserPoolTaggingException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\"shape\":\"MessageType\"}\
      },\
      \"documentation\":\"<p>This exception is thrown when a user pool tag cannot be set or updated.</p>\",\
      \"exception\":true\
    },\
    \"UserPoolTagsType\":{\
      \"type\":\"map\",\
      \"key\":{\"shape\":\"StringType\"},\
      \"value\":{\"shape\":\"StringType\"}\
    },\
    \"UserPoolType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Id\":{\
          \"shape\":\"UserPoolIdType\",\
          \"documentation\":\"<p>The ID of the user pool.</p>\"\
        },\
        \"Name\":{\
          \"shape\":\"UserPoolNameType\",\
          \"documentation\":\"<p>The name of the user pool.</p>\"\
        },\
        \"Policies\":{\
          \"shape\":\"UserPoolPolicyType\",\
          \"documentation\":\"<p>A container for the policies associated with a user pool.</p>\"\
        },\
        \"LambdaConfig\":{\
          \"shape\":\"LambdaConfigType\",\
          \"documentation\":\"<p>A container for the AWS Lambda triggers associated with a user pool.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"StatusType\",\
          \"documentation\":\"<p>The status of a user pool.</p>\"\
        },\
        \"LastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user pool was last modified.</p>\"\
        },\
        \"CreationDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The date the user pool was created.</p>\"\
        },\
        \"SchemaAttributes\":{\
          \"shape\":\"SchemaAttributesListType\",\
          \"documentation\":\"<p>A container with the schema attributes of a user pool.</p>\"\
        },\
        \"AutoVerifiedAttributes\":{\
          \"shape\":\"VerifiedAttributesListType\",\
          \"documentation\":\"<p>Specifies the attributes that are auto-verified in a user pool.</p>\"\
        },\
        \"AliasAttributes\":{\
          \"shape\":\"AliasAttributesListType\",\
          \"documentation\":\"<p>Specifies the attributes that are aliased in a user pool.</p>\"\
        },\
        \"UsernameAttributes\":{\
          \"shape\":\"UsernameAttributesListType\",\
          \"documentation\":\"<p>Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.</p>\"\
        },\
        \"SmsVerificationMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>The contents of the SMS verification message.</p>\"\
        },\
        \"EmailVerificationMessage\":{\
          \"shape\":\"EmailVerificationMessageType\",\
          \"documentation\":\"<p>The contents of the email verification message.</p>\"\
        },\
        \"EmailVerificationSubject\":{\
          \"shape\":\"EmailVerificationSubjectType\",\
          \"documentation\":\"<p>The subject of the email verification message.</p>\"\
        },\
        \"VerificationMessageTemplate\":{\
          \"shape\":\"VerificationMessageTemplateType\",\
          \"documentation\":\"<p>The template for verification messages.</p>\"\
        },\
        \"SmsAuthenticationMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>The contents of the SMS authentication message.</p>\"\
        },\
        \"MfaConfiguration\":{\
          \"shape\":\"UserPoolMfaType\",\
          \"documentation\":\"<p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>\"\
        },\
        \"DeviceConfiguration\":{\
          \"shape\":\"DeviceConfigurationType\",\
          \"documentation\":\"<p>The device configuration.</p>\"\
        },\
        \"EstimatedNumberOfUsers\":{\
          \"shape\":\"IntegerType\",\
          \"documentation\":\"<p>A number estimating the size of the user pool.</p>\"\
        },\
        \"EmailConfiguration\":{\
          \"shape\":\"EmailConfigurationType\",\
          \"documentation\":\"<p>The email configuration.</p>\"\
        },\
        \"SmsConfiguration\":{\
          \"shape\":\"SmsConfigurationType\",\
          \"documentation\":\"<p>The SMS configuration.</p>\"\
        },\
        \"UserPoolTags\":{\
          \"shape\":\"UserPoolTagsType\",\
          \"documentation\":\"<p>The cost allocation tags for the user pool. For more information, see <a href=\\\"http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html\\\">Adding Cost Allocation Tags to Your User Pool</a> </p>\"\
        },\
        \"SmsConfigurationFailure\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The reason why the SMS configuration cannot send the messages to your users.</p>\"\
        },\
        \"EmailConfigurationFailure\":{\
          \"shape\":\"StringType\",\
          \"documentation\":\"<p>The reason why the email configuration cannot send the messages to your users.</p>\"\
        },\
        \"AdminCreateUserConfig\":{\
          \"shape\":\"AdminCreateUserConfigType\",\
          \"documentation\":\"<p>The configuration for <code>AdminCreateUser</code> requests.</p>\"\
        }\
      },\
      \"documentation\":\"<p>A container for information about the user pool type.</p>\"\
    },\
    \"UserStatusType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"UNCONFIRMED\",\
        \"CONFIRMED\",\
        \"ARCHIVED\",\
        \"COMPROMISED\",\
        \"UNKNOWN\",\
        \"RESET_REQUIRED\",\
        \"FORCE_CHANGE_PASSWORD\"\
      ]\
    },\
    \"UserType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Username\":{\
          \"shape\":\"UsernameType\",\
          \"documentation\":\"<p>The user name of the user you wish to describe.</p>\"\
        },\
        \"Attributes\":{\
          \"shape\":\"AttributeListType\",\
          \"documentation\":\"<p>A container with information about the user type attributes.</p>\"\
        },\
        \"UserCreateDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The creation date of the user.</p>\"\
        },\
        \"UserLastModifiedDate\":{\
          \"shape\":\"DateType\",\
          \"documentation\":\"<p>The last modified date of the user.</p>\"\
        },\
        \"Enabled\":{\
          \"shape\":\"BooleanType\",\
          \"documentation\":\"<p>Specifies whether the user is enabled.</p>\"\
        },\
        \"UserStatus\":{\
          \"shape\":\"UserStatusType\",\
          \"documentation\":\"<p>The user status. Can be one of the following:</p> <ul> <li> <p>UNCONFIRMED - User has been created but not confirmed.</p> </li> <li> <p>CONFIRMED - User has been confirmed.</p> </li> <li> <p>ARCHIVED - User is no longer active.</p> </li> <li> <p>COMPROMISED - User is disabled due to a potential security threat.</p> </li> <li> <p>UNKNOWN - User status is not known.</p> </li> </ul>\"\
        },\
        \"MFAOptions\":{\
          \"shape\":\"MFAOptionListType\",\
          \"documentation\":\"<p>The MFA options for the user.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The user type.</p>\"\
    },\
    \"UsernameAttributeType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"phone_number\",\
        \"email\"\
      ]\
    },\
    \"UsernameAttributesListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UsernameAttributeType\"}\
    },\
    \"UsernameExistsException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"message\":{\
          \"shape\":\"MessageType\",\
          \"documentation\":\"<p>The message returned when Amazon Cognito throws a user name exists exception.</p>\"\
        }\
      },\
      \"documentation\":\"<p>This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.</p>\",\
      \"exception\":true\
    },\
    \"UsernameType\":{\
      \"type\":\"string\",\
      \"max\":128,\
      \"min\":1,\
      \"pattern\":\"[\\\\p{L}\\\\p{M}\\\\p{S}\\\\p{N}\\\\p{P}]+\",\
      \"sensitive\":true\
    },\
    \"UsersListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"UserType\"}\
    },\
    \"VerificationMessageTemplateType\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"SmsMessage\":{\
          \"shape\":\"SmsVerificationMessageType\",\
          \"documentation\":\"<p>The SMS message template.</p>\"\
        },\
        \"EmailMessage\":{\
          \"shape\":\"EmailVerificationMessageType\",\
          \"documentation\":\"<p>The email message template.</p>\"\
        },\
        \"EmailSubject\":{\
          \"shape\":\"EmailVerificationSubjectType\",\
          \"documentation\":\"<p>The subject line for the email message template.</p>\"\
        },\
        \"EmailMessageByLink\":{\
          \"shape\":\"EmailVerificationMessageByLinkType\",\
          \"documentation\":\"<p>The email message template for sending a confirmation link to the user.</p>\"\
        },\
        \"EmailSubjectByLink\":{\
          \"shape\":\"EmailVerificationSubjectByLinkType\",\
          \"documentation\":\"<p>The subject line for the email message template for sending a confirmation link to the user.</p>\"\
        },\
        \"DefaultEmailOption\":{\
          \"shape\":\"DefaultEmailOptionType\",\
          \"documentation\":\"<p>The default email option.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The template for verification messages.</p>\"\
    },\
    \"VerifiedAttributeType\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"phone_number\",\
        \"email\"\
      ]\
    },\
    \"VerifiedAttributesListType\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"VerifiedAttributeType\"}\
    },\
    \"VerifyUserAttributeRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"AccessToken\",\
        \"AttributeName\",\
        \"Code\"\
      ],\
      \"members\":{\
        \"AccessToken\":{\
          \"shape\":\"TokenModelType\",\
          \"documentation\":\"<p>Represents the access token of the request to verify user attributes.</p>\"\
        },\
        \"AttributeName\":{\
          \"shape\":\"AttributeNameType\",\
          \"documentation\":\"<p>The attribute name in the request to verify user attributes.</p>\"\
        },\
        \"Code\":{\
          \"shape\":\"ConfirmationCodeType\",\
          \"documentation\":\"<p>The verification code in the request to verify user attributes.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Represents the request to verify user attributes.</p>\"\
    },\
    \"VerifyUserAttributeResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
      },\
      \"documentation\":\"<p>A container representing the response from the server from the request to verify user attributes.</p>\"\
    }\
  },\
  \"documentation\":\"<p>Using the Amazon Cognito User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.</p> <p>This API reference provides information about user pools in Amazon Cognito User Pools.</p> <p>For more information, see the Amazon Cognito Documentation.</p>\"\
}\
";
}

@end
