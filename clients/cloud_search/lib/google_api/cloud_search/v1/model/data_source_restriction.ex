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

defmodule GoogleApi.CloudSearch.V1.Model.DataSourceRestriction do
  @moduledoc """
  Restriction on Datasource.

  ## Attributes

  *   `filterOptions` (*type:* `list(GoogleApi.CloudSearch.V1.Model.FilterOptions.t)`, *default:* `nil`) - Filter options restricting the results. If multiple filters
      are present, they are grouped by object type before joining.
      Filters with the same object type are joined conjunctively, then
      the resulting expressions are joined disjunctively.

      The maximum number of elements is 20.

      NOTE: Suggest API supports only few filters at the moment:
        "objecttype", "type" and "mimetype".
      For now, schema specific filters cannot be used to filter suggestions.
  *   `source` (*type:* `GoogleApi.CloudSearch.V1.Model.Source.t`, *default:* `nil`) - The source of restriction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filterOptions => list(GoogleApi.CloudSearch.V1.Model.FilterOptions.t()),
          :source => GoogleApi.CloudSearch.V1.Model.Source.t()
        }

  field(:filterOptions, as: GoogleApi.CloudSearch.V1.Model.FilterOptions, type: :list)
  field(:source, as: GoogleApi.CloudSearch.V1.Model.Source)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.DataSourceRestriction do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.DataSourceRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.DataSourceRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end