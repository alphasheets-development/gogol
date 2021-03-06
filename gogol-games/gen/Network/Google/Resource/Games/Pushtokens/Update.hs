{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.Pushtokens.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a push token for the current user and application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.pushtokens.update@.
module Network.Google.Resource.Games.Pushtokens.Update
    (
    -- * REST Resource
      PushtokensUpdateResource

    -- * Creating a Request
    , pushtokensUpdate
    , PushtokensUpdate

    -- * Request Lenses
    , puConsistencyToken
    , puPayload
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.pushtokens.update@ method which the
-- 'PushtokensUpdate' request conforms to.
type PushtokensUpdateResource =
     "games" :>
       "v1" :>
         "pushtokens" :>
           QueryParam "consistencyToken" (Textual Int64) :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PushToken :> Put '[JSON] ()

-- | Registers a push token for the current user and application.
--
-- /See:/ 'pushtokensUpdate' smart constructor.
data PushtokensUpdate = PushtokensUpdate'
    { _puConsistencyToken :: !(Maybe (Textual Int64))
    , _puPayload          :: !PushToken
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushtokensUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puConsistencyToken'
--
-- * 'puPayload'
pushtokensUpdate
    :: PushToken -- ^ 'puPayload'
    -> PushtokensUpdate
pushtokensUpdate pPuPayload_ =
    PushtokensUpdate'
    { _puConsistencyToken = Nothing
    , _puPayload = pPuPayload_
    }

-- | The last-seen mutation timestamp.
puConsistencyToken :: Lens' PushtokensUpdate (Maybe Int64)
puConsistencyToken
  = lens _puConsistencyToken
      (\ s a -> s{_puConsistencyToken = a})
      . mapping _Coerce

-- | Multipart request metadata.
puPayload :: Lens' PushtokensUpdate PushToken
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

instance GoogleRequest PushtokensUpdate where
        type Rs PushtokensUpdate = ()
        type Scopes PushtokensUpdate =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient PushtokensUpdate'{..}
          = go _puConsistencyToken (Just AltJSON) _puPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy PushtokensUpdateResource)
                      mempty
