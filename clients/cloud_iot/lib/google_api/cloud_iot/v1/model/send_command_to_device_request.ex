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

defmodule GoogleApi.CloudIot.V1.Model.SendCommandToDeviceRequest do
  @moduledoc """
  Request for `SendCommandToDevice`.

  ## Attributes

  *   `binaryData` (*type:* `String.t`, *default:* `nil`) - The command data to send to the device.
  *   `subfolder` (*type:* `String.t`, *default:* `nil`) - Optional subfolder for the command. If empty, the command will be delivered
      to the /devices/{device-id}/commands topic, otherwise it will be delivered
      to the /devices/{device-id}/commands/{subfolder} topic. Multi-level
      subfolders are allowed. This field must not have more than 256 characters,
      and must not contain any MQTT wildcards ("+" or "#") or null characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryData => String.t(),
          :subfolder => String.t()
        }

  field(:binaryData)
  field(:subfolder)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.SendCommandToDeviceRequest do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.SendCommandToDeviceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.SendCommandToDeviceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
