{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a project sink. After deletion, no new log entries are written
-- to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksDelete@.
module Logging.Projects.Sinks.Delete
    (
    -- * REST Resource
      ProjectsSinksDeleteAPI

    -- * Creating a Request
    , projectsSinksDelete
    , ProjectsSinksDelete

    -- * Request Lenses
    , psdXgafv
    , psdQuotaUser
    , psdPrettyPrint
    , psdUploadProtocol
    , psdPp
    , psdAccessToken
    , psdUploadType
    , psdBearerToken
    , psdKey
    , psdOauthToken
    , psdProjectsId
    , psdSinksId
    , psdFields
    , psdCallback
    , psdAlt
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksDelete@ which the
-- 'ProjectsSinksDelete' request conforms to.
type ProjectsSinksDeleteAPI =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "sinks" :>
             Capture "sinksId" Text :> Delete '[JSON] Empty

-- | Deletes a project sink. After deletion, no new log entries are written
-- to the destination.
--
-- /See:/ 'projectsSinksDelete' smart constructor.
data ProjectsSinksDelete = ProjectsSinksDelete
    { _psdXgafv          :: !(Maybe Text)
    , _psdQuotaUser      :: !(Maybe Text)
    , _psdPrettyPrint    :: !Bool
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdPp             :: !Bool
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdBearerToken    :: !(Maybe Text)
    , _psdKey            :: !(Maybe Text)
    , _psdOauthToken     :: !(Maybe Text)
    , _psdProjectsId     :: !Text
    , _psdSinksId        :: !Text
    , _psdFields         :: !(Maybe Text)
    , _psdCallback       :: !(Maybe Text)
    , _psdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdQuotaUser'
--
-- * 'psdPrettyPrint'
--
-- * 'psdUploadProtocol'
--
-- * 'psdPp'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdBearerToken'
--
-- * 'psdKey'
--
-- * 'psdOauthToken'
--
-- * 'psdProjectsId'
--
-- * 'psdSinksId'
--
-- * 'psdFields'
--
-- * 'psdCallback'
--
-- * 'psdAlt'
projectsSinksDelete
    :: Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsSinksDelete
projectsSinksDelete pPsdProjectsId_ pPsdSinksId_ =
    ProjectsSinksDelete
    { _psdXgafv = Nothing
    , _psdQuotaUser = Nothing
    , _psdPrettyPrint = True
    , _psdUploadProtocol = Nothing
    , _psdPp = True
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdBearerToken = Nothing
    , _psdKey = Nothing
    , _psdOauthToken = Nothing
    , _psdProjectsId = pPsdProjectsId_
    , _psdSinksId = pPsdSinksId_
    , _psdFields = Nothing
    , _psdCallback = Nothing
    , _psdAlt = "json"
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsSinksDelete' (Maybe Text)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psdQuotaUser :: Lens' ProjectsSinksDelete' (Maybe Text)
psdQuotaUser
  = lens _psdQuotaUser (\ s a -> s{_psdQuotaUser = a})

-- | Returns response with indentations and line breaks.
psdPrettyPrint :: Lens' ProjectsSinksDelete' Bool
psdPrettyPrint
  = lens _psdPrettyPrint
      (\ s a -> s{_psdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSinksDelete' (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | Pretty-print response.
psdPp :: Lens' ProjectsSinksDelete' Bool
psdPp = lens _psdPp (\ s a -> s{_psdPp = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSinksDelete' (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSinksDelete' (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | OAuth bearer token.
psdBearerToken :: Lens' ProjectsSinksDelete' (Maybe Text)
psdBearerToken
  = lens _psdBearerToken
      (\ s a -> s{_psdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psdKey :: Lens' ProjectsSinksDelete' (Maybe Text)
psdKey = lens _psdKey (\ s a -> s{_psdKey = a})

-- | OAuth 2.0 token for the current user.
psdOauthToken :: Lens' ProjectsSinksDelete' (Maybe Text)
psdOauthToken
  = lens _psdOauthToken
      (\ s a -> s{_psdOauthToken = a})

-- | Part of \`sinkName\`. The resource name of the project sink to delete.
psdProjectsId :: Lens' ProjectsSinksDelete' Text
psdProjectsId
  = lens _psdProjectsId
      (\ s a -> s{_psdProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
psdSinksId :: Lens' ProjectsSinksDelete' Text
psdSinksId
  = lens _psdSinksId (\ s a -> s{_psdSinksId = a})

-- | Selector specifying which fields to include in a partial response.
psdFields :: Lens' ProjectsSinksDelete' (Maybe Text)
psdFields
  = lens _psdFields (\ s a -> s{_psdFields = a})

-- | JSONP
psdCallback :: Lens' ProjectsSinksDelete' (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

-- | Data format for response.
psdAlt :: Lens' ProjectsSinksDelete' Text
psdAlt = lens _psdAlt (\ s a -> s{_psdAlt = a})

instance GoogleRequest ProjectsSinksDelete' where
        type Rs ProjectsSinksDelete' = Empty
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsSinksDelete{..}
          = go _psdXgafv _psdQuotaUser _psdPrettyPrint
              _psdUploadProtocol
              _psdPp
              _psdAccessToken
              _psdUploadType
              _psdBearerToken
              _psdKey
              _psdOauthToken
              _psdProjectsId
              _psdSinksId
              _psdFields
              _psdCallback
              _psdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSinksDeleteAPI)
                      r
                      u