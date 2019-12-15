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

defmodule GoogleApi.Content.V21.Model.RateGroup do
  @moduledoc """


  ## Attributes

  *   `applicableShippingLabels` (*type:* `list(String.t)`, *default:* `nil`) - A list of shipping labels defining the products to which this rate group applies to. This is a disjunction: only one of the labels has to match for the rate group to apply. May only be empty for the last rate group of a service. Required.
  *   `carrierRates` (*type:* `list(GoogleApi.Content.V21.Model.CarrierRate.t)`, *default:* `nil`) - A list of carrier rates that can be referred to by mainTable or singleValue.
  *   `mainTable` (*type:* `GoogleApi.Content.V21.Model.Table.t`, *default:* `nil`) - A table defining the rate group, when singleValue is not expressive enough. Can only be set if singleValue is not set.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the rate group. Optional. If set has to be unique within shipping service.
  *   `singleValue` (*type:* `GoogleApi.Content.V21.Model.Value.t`, *default:* `nil`) - The value of the rate group (e.g. flat rate $10). Can only be set if mainTable and subtables are not set.
  *   `subtables` (*type:* `list(GoogleApi.Content.V21.Model.Table.t)`, *default:* `nil`) - A list of subtables referred to by mainTable. Can only be set if mainTable is set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicableShippingLabels => list(String.t()),
          :carrierRates => list(GoogleApi.Content.V21.Model.CarrierRate.t()),
          :mainTable => GoogleApi.Content.V21.Model.Table.t(),
          :name => String.t(),
          :singleValue => GoogleApi.Content.V21.Model.Value.t(),
          :subtables => list(GoogleApi.Content.V21.Model.Table.t())
        }

  field(:applicableShippingLabels, type: :list)
  field(:carrierRates, as: GoogleApi.Content.V21.Model.CarrierRate, type: :list)
  field(:mainTable, as: GoogleApi.Content.V21.Model.Table)
  field(:name)
  field(:singleValue, as: GoogleApi.Content.V21.Model.Value)
  field(:subtables, as: GoogleApi.Content.V21.Model.Table, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RateGroup do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RateGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RateGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end