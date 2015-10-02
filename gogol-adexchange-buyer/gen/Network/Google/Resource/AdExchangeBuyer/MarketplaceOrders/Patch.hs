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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the given order. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersPatch@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch
    (
    -- * REST Resource
      MarketplaceOrdersPatchResource

    -- * Creating a Request
    , marketplaceOrdersPatch'
    , MarketplaceOrdersPatch'

    -- * Request Lenses
    , mopQuotaUser
    , mopUpdateAction
    , mopPrettyPrint
    , mopUserIP
    , mopRevisionNumber
    , mopKey
    , mopOAuthToken
    , mopOrderId
    , mopFields
    , mopMarketplaceOrder
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersPatch@ which the
-- 'MarketplaceOrdersPatch'' request conforms to.
type MarketplaceOrdersPatchResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Capture "revisionNumber" Int64 :>
           Capture "updateAction"
             AdexchangebuyerMarketplaceOrdersPatchUpdateAction
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] MarketplaceOrder :>
                             Patch '[JSON] MarketplaceOrder

-- | Update the given order. This method supports patch semantics.
--
-- /See:/ 'marketplaceOrdersPatch'' smart constructor.
data MarketplaceOrdersPatch' = MarketplaceOrdersPatch'
    { _mopQuotaUser        :: !(Maybe Text)
    , _mopUpdateAction     :: !AdexchangebuyerMarketplaceOrdersPatchUpdateAction
    , _mopPrettyPrint      :: !Bool
    , _mopUserIP           :: !(Maybe Text)
    , _mopRevisionNumber   :: !Int64
    , _mopKey              :: !(Maybe Key)
    , _mopOAuthToken       :: !(Maybe OAuthToken)
    , _mopOrderId          :: !Text
    , _mopFields           :: !(Maybe Text)
    , _mopMarketplaceOrder :: !MarketplaceOrder
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mopQuotaUser'
--
-- * 'mopUpdateAction'
--
-- * 'mopPrettyPrint'
--
-- * 'mopUserIP'
--
-- * 'mopRevisionNumber'
--
-- * 'mopKey'
--
-- * 'mopOAuthToken'
--
-- * 'mopOrderId'
--
-- * 'mopFields'
--
-- * 'mopMarketplaceOrder'
marketplaceOrdersPatch'
    :: AdexchangebuyerMarketplaceOrdersPatchUpdateAction -- ^ 'updateAction'
    -> Int64 -- ^ 'revisionNumber'
    -> Text -- ^ 'orderId'
    -> MarketplaceOrder -- ^ 'MarketplaceOrder'
    -> MarketplaceOrdersPatch'
marketplaceOrdersPatch' pMopUpdateAction_ pMopRevisionNumber_ pMopOrderId_ pMopMarketplaceOrder_ =
    MarketplaceOrdersPatch'
    { _mopQuotaUser = Nothing
    , _mopUpdateAction = pMopUpdateAction_
    , _mopPrettyPrint = True
    , _mopUserIP = Nothing
    , _mopRevisionNumber = pMopRevisionNumber_
    , _mopKey = Nothing
    , _mopOAuthToken = Nothing
    , _mopOrderId = pMopOrderId_
    , _mopFields = Nothing
    , _mopMarketplaceOrder = pMopMarketplaceOrder_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mopQuotaUser :: Lens' MarketplaceOrdersPatch' (Maybe Text)
mopQuotaUser
  = lens _mopQuotaUser (\ s a -> s{_mopQuotaUser = a})

-- | The proposed action to take on the order.
mopUpdateAction :: Lens' MarketplaceOrdersPatch' AdexchangebuyerMarketplaceOrdersPatchUpdateAction
mopUpdateAction
  = lens _mopUpdateAction
      (\ s a -> s{_mopUpdateAction = a})

-- | Returns response with indentations and line breaks.
mopPrettyPrint :: Lens' MarketplaceOrdersPatch' Bool
mopPrettyPrint
  = lens _mopPrettyPrint
      (\ s a -> s{_mopPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mopUserIP :: Lens' MarketplaceOrdersPatch' (Maybe Text)
mopUserIP
  = lens _mopUserIP (\ s a -> s{_mopUserIP = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
mopRevisionNumber :: Lens' MarketplaceOrdersPatch' Int64
mopRevisionNumber
  = lens _mopRevisionNumber
      (\ s a -> s{_mopRevisionNumber = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mopKey :: Lens' MarketplaceOrdersPatch' (Maybe Key)
mopKey = lens _mopKey (\ s a -> s{_mopKey = a})

-- | OAuth 2.0 token for the current user.
mopOAuthToken :: Lens' MarketplaceOrdersPatch' (Maybe OAuthToken)
mopOAuthToken
  = lens _mopOAuthToken
      (\ s a -> s{_mopOAuthToken = a})

-- | The order id to update.
mopOrderId :: Lens' MarketplaceOrdersPatch' Text
mopOrderId
  = lens _mopOrderId (\ s a -> s{_mopOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mopFields :: Lens' MarketplaceOrdersPatch' (Maybe Text)
mopFields
  = lens _mopFields (\ s a -> s{_mopFields = a})

-- | Multipart request metadata.
mopMarketplaceOrder :: Lens' MarketplaceOrdersPatch' MarketplaceOrder
mopMarketplaceOrder
  = lens _mopMarketplaceOrder
      (\ s a -> s{_mopMarketplaceOrder = a})

instance GoogleAuth MarketplaceOrdersPatch' where
        authKey = mopKey . _Just
        authToken = mopOAuthToken . _Just

instance GoogleRequest MarketplaceOrdersPatch' where
        type Rs MarketplaceOrdersPatch' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceOrdersPatch'{..}
          = go _mopQuotaUser _mopUpdateAction
              (Just _mopPrettyPrint)
              _mopUserIP
              _mopRevisionNumber
              _mopKey
              _mopOAuthToken
              _mopOrderId
              _mopFields
              (Just AltJSON)
              _mopMarketplaceOrder
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceOrdersPatchResource)
                      r
                      u