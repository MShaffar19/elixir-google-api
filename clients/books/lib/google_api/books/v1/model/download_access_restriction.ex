# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Books.V1.Model.DownloadAccessRestriction do
  @moduledoc """


  ## Attributes

  *   `deviceAllowed` (*type:* `boolean()`, *default:* `nil`) - If restricted, whether access is granted for this (user, device, volume).
  *   `downloadsAcquired` (*type:* `integer()`, *default:* `nil`) - If restricted, the number of content download licenses already acquired (including the requesting client, if licensed).
  *   `justAcquired` (*type:* `boolean()`, *default:* `nil`) - If deviceAllowed, whether access was just acquired with this request.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Resource type.
  *   `maxDownloadDevices` (*type:* `integer()`, *default:* `nil`) - If restricted, the maximum number of content download licenses for this volume.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Error/warning message.
  *   `nonce` (*type:* `String.t`, *default:* `nil`) - Client nonce for verification. Download access and client-validation only.
  *   `reasonCode` (*type:* `String.t`, *default:* `nil`) - Error/warning reason code. Additional codes may be added in the future. 0 OK 100 ACCESS_DENIED_PUBLISHER_LIMIT 101 ACCESS_DENIED_LIMIT 200 WARNING_USED_LAST_ACCESS
  *   `restricted` (*type:* `boolean()`, *default:* `nil`) - Whether this volume has any download access restrictions.
  *   `signature` (*type:* `String.t`, *default:* `nil`) - Response signature.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Client app identifier for verification. Download access and client-validation only.
  *   `volumeId` (*type:* `String.t`, *default:* `nil`) - Identifies the volume for which this entry applies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceAllowed => boolean(),
          :downloadsAcquired => integer(),
          :justAcquired => boolean(),
          :kind => String.t(),
          :maxDownloadDevices => integer(),
          :message => String.t(),
          :nonce => String.t(),
          :reasonCode => String.t(),
          :restricted => boolean(),
          :signature => String.t(),
          :source => String.t(),
          :volumeId => String.t()
        }

  field(:deviceAllowed)
  field(:downloadsAcquired)
  field(:justAcquired)
  field(:kind)
  field(:maxDownloadDevices)
  field(:message)
  field(:nonce)
  field(:reasonCode)
  field(:restricted)
  field(:signature)
  field(:source)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.DownloadAccessRestriction do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.DownloadAccessRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.DownloadAccessRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
