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

defmodule GoogleApi.Licensing.V1.Model.LicenseAssignmentInsert do
  @moduledoc """
  Representation of a license assignment.

  ## Attributes

  *   `userId` (*type:* `String.t`, *default:* `nil`) - Email id of the user
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :userId => String.t()
        }

  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Licensing.V1.Model.LicenseAssignmentInsert do
  def decode(value, options) do
    GoogleApi.Licensing.V1.Model.LicenseAssignmentInsert.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Licensing.V1.Model.LicenseAssignmentInsert do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
