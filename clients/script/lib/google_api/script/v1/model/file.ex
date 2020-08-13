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

defmodule GoogleApi.Script.V1.Model.File do
  @moduledoc """
  An individual file within a script project. A file is a third-party source code created by one or more developers. It can be a server-side JS code, HTML, or a configuration file. Each script project can contain multiple files.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation date timestamp. This read-only field is only visible to users who have WRITER permission for the script project.
  *   `functionSet` (*type:* `GoogleApi.Script.V1.Model.GoogleAppsScriptTypeFunctionSet.t`, *default:* `nil`) - The defined set of functions in the script file, if any.
  *   `lastModifyUser` (*type:* `GoogleApi.Script.V1.Model.GoogleAppsScriptTypeUser.t`, *default:* `nil`) - The user who modified the file most recently. This read-only field is only visible to users who have WRITER permission for the script project.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the file. The file extension is not part of the file name, which can be identified from the type field.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The file content.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the file.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last modified date timestamp. This read-only field is only visible to users who have WRITER permission for the script project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :functionSet => GoogleApi.Script.V1.Model.GoogleAppsScriptTypeFunctionSet.t(),
          :lastModifyUser => GoogleApi.Script.V1.Model.GoogleAppsScriptTypeUser.t(),
          :name => String.t(),
          :source => String.t(),
          :type => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:functionSet, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeFunctionSet)
  field(:lastModifyUser, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeUser)
  field(:name)
  field(:source)
  field(:type)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.File do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.File.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.File do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
