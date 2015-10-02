{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Tables.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesPatch@.
module Network.Google.Resource.MapsEngine.Tables.Patch
    (
    -- * REST Resource
      TablesPatchResource

    -- * Creating a Request
    , tablesPatch'
    , TablesPatch'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIP
    , tpKey
    , tpId
    , tpOAuthToken
    , tpTable
    , tpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesPatch@ which the
-- 'TablesPatch'' request conforms to.
type TablesPatchResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Table :> Patch '[JSON] ()

-- | Mutate a table asset.
--
-- /See:/ 'tablesPatch'' smart constructor.
data TablesPatch' = TablesPatch'
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpUserIP      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Key)
    , _tpId          :: !Text
    , _tpOAuthToken  :: !(Maybe OAuthToken)
    , _tpTable       :: !Table
    , _tpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIP'
--
-- * 'tpKey'
--
-- * 'tpId'
--
-- * 'tpOAuthToken'
--
-- * 'tpTable'
--
-- * 'tpFields'
tablesPatch'
    :: Text -- ^ 'id'
    -> Table -- ^ 'Table'
    -> TablesPatch'
tablesPatch' pTpId_ pTpTable_ =
    TablesPatch'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIP = Nothing
    , _tpKey = Nothing
    , _tpId = pTpId_
    , _tpOAuthToken = Nothing
    , _tpTable = pTpTable_
    , _tpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TablesPatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TablesPatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIP :: Lens' TablesPatch' (Maybe Text)
tpUserIP = lens _tpUserIP (\ s a -> s{_tpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TablesPatch' (Maybe Key)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | The ID of the table.
tpId :: Lens' TablesPatch' Text
tpId = lens _tpId (\ s a -> s{_tpId = a})

-- | OAuth 2.0 token for the current user.
tpOAuthToken :: Lens' TablesPatch' (Maybe OAuthToken)
tpOAuthToken
  = lens _tpOAuthToken (\ s a -> s{_tpOAuthToken = a})

-- | Multipart request metadata.
tpTable :: Lens' TablesPatch' Table
tpTable = lens _tpTable (\ s a -> s{_tpTable = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TablesPatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

instance GoogleAuth TablesPatch' where
        authKey = tpKey . _Just
        authToken = tpOAuthToken . _Just

instance GoogleRequest TablesPatch' where
        type Rs TablesPatch' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesPatch'{..}
          = go _tpQuotaUser (Just _tpPrettyPrint) _tpUserIP
              _tpKey
              _tpId
              _tpOAuthToken
              _tpFields
              (Just AltJSON)
              _tpTable
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPatchResource)
                      r
                      u