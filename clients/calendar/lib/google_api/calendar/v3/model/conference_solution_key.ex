# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Calendar.V3.Model.ConferenceSolutionKey do
  @moduledoc """


  ## Attributes

  - type (String.t): The conference solution type. If a client encounters an unfamiliar or empty type, it should still be able to display the entry points. However, it should disallow modifications. The possible values are:   - \&quot;eventHangout\&quot; for Hangouts for consumers (http://hangouts.google.com) - \&quot;eventNamedHangout\&quot; for classic Hangouts for G Suite users (http://hangouts.google.com) - \&quot;hangoutsMeet\&quot; for Hangouts Meet (http://meet.google.com) Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          type: any()
        }

  defstruct [
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.ConferenceSolutionKey do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.ConferenceSolutionKey do
  def encode(value, options) do
    GoogleApi.Calendar.V3.Deserializer.serialize_non_nil(value, options)
  end
end
