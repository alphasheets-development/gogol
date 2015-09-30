{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GroupsSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you manage permission levels and related settings of a group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference>
module Network.Google.GroupsSettings
    (
    -- * API
      GroupsSettingsAPI
    , groupsSettingsAPI
    , groupsSettingsURL

    -- * Service Methods

    -- * REST Resources

    -- ** GroupsSettingsGroupsGet
    , module GroupsSettings.Groups.Get

    -- ** GroupsSettingsGroupsPatch
    , module GroupsSettings.Groups.Patch

    -- ** GroupsSettingsGroupsUpdate
    , module GroupsSettings.Groups.Update

    -- * Types

    -- ** Groups
    , Groups
    , groups
    , gEmail
    , gSendMessageDenyNotification
    , gWhoCanPostMessage
    , gAllowExternalMembers
    , gShowInGroupDirectory
    , gSpamModerationLevel
    , gKind
    , gWhoCanViewMembership
    , gMembersCanPostAsTheGroup
    , gWhoCanViewGroup
    , gWhoCanJoin
    , gArchiveOnly
    , gMaxMessageBytes
    , gReplyTo
    , gMessageModerationLevel
    , gIncludeInGlobalAddressList
    , gIsArchived
    , gName
    , gMessageDisplayFont
    , gCustomReplyTo
    , gWhoCanContactOwner
    , gWhoCanInvite
    , gWhoCanLeaveGroup
    , gAllowGoogleCommunication
    , gPrimaryLanguage
    , gDescription
    , gDefaultMessageDenyNotificationText
    , gAllowWebPosting
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GroupsSettings.Groups.Get
import           Network.Google.Resource.GroupsSettings.Groups.Patch
import           Network.Google.Resource.GroupsSettings.Groups.Update

{- $resources
TODO
-}

type GroupsSettingsAPI = Groups

groupsSettingsAPI :: Proxy GroupsSettingsAPI
groupsSettingsAPI = Proxy