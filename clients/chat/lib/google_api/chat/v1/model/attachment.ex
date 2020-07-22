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

defmodule GoogleApi.Chat.V1.Model.Attachment do
  @moduledoc """
  An attachment in Hangouts Chat.

  ## Attributes

  *   `attachmentDataRef` (*type:* `GoogleApi.Chat.V1.Model.AttachmentDataRef.t`, *default:* `nil`) - A reference to the attachment data. This is used with the media API to
      download the attachment data.
  *   `contentName` (*type:* `String.t`, *default:* `nil`) - The original file name for the content, not the full path.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - The content type (MIME type) of the file.
  *   `downloadUri` (*type:* `String.t`, *default:* `nil`) - Output only. The download URL which should be used to allow a human user to
      download the attachment. Bots should not use this URL to download
      attachment content.
  *   `driveDataRef` (*type:* `GoogleApi.Chat.V1.Model.DriveDataRef.t`, *default:* `nil`) - A reference to the drive attachment. This is used with the Drive API.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the attachment, in the form
      "spaces/*/messages/*/attachments/*".
  *   `source` (*type:* `String.t`, *default:* `nil`) - The source of the attachment.
  *   `thumbnailUri` (*type:* `String.t`, *default:* `nil`) - Output only. The thumbnail URL which should be used to preview the
      attachment to a human user. Bots should not use this URL to download
      attachment content.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachmentDataRef => GoogleApi.Chat.V1.Model.AttachmentDataRef.t(),
          :contentName => String.t(),
          :contentType => String.t(),
          :downloadUri => String.t(),
          :driveDataRef => GoogleApi.Chat.V1.Model.DriveDataRef.t(),
          :name => String.t(),
          :source => String.t(),
          :thumbnailUri => String.t()
        }

  field(:attachmentDataRef, as: GoogleApi.Chat.V1.Model.AttachmentDataRef)
  field(:contentName)
  field(:contentType)
  field(:downloadUri)
  field(:driveDataRef, as: GoogleApi.Chat.V1.Model.DriveDataRef)
  field(:name)
  field(:source)
  field(:thumbnailUri)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Attachment do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Attachment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Attachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end