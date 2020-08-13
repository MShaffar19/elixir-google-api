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

defmodule GoogleApi.Script.V1.Model.Struct do
  @moduledoc """
  `Struct` represents a structured data value, consisting of fields which map to dynamically typed values.

  ## Attributes

  *   `fields` (*type:* `%{optional(String.t) => GoogleApi.Script.V1.Model.Value.t}`, *default:* `nil`) - Unordered map of dynamically typed values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => %{optional(String.t()) => GoogleApi.Script.V1.Model.Value.t()}
        }

  field(:fields, as: GoogleApi.Script.V1.Model.Value, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Struct do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Struct.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Struct do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
