# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudIot.V1.Model.StateNotificationConfig do
  @moduledoc """
  The configuration for notification of new states received from the device.

  ## Attributes

  *   `pubsubTopicName` (*type:* `String.t`, *default:* `nil`) - A Cloud Pub/Sub topic name. For example,
      `projects/myProject/topics/deviceEvents`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pubsubTopicName => String.t()
        }

  field(:pubsubTopicName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.StateNotificationConfig do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.StateNotificationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.StateNotificationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
