# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sdr-client/all/sdr-client.rbi
#
# sdr-client-0.42.0

module SdrClient
end
module SdrClient::Deposit
  def self.model_run(request_dro:, url:, accession:, files: nil, logger: nil); end
  def self.run(apo:, source_id:, url:, label: nil, type: nil, viewing_direction: nil, access: nil, download: nil, use_statement: nil, copyright: nil, collection: nil, catkey: nil, embargo_release_date: nil, embargo_access: nil, files: nil, files_metadata: nil, accession: nil, grouping_strategy: nil, logger: nil); end
end
class SdrClient::Deposit::CreateResource
  def accession?; end
  def connection; end
  def initialize(accession:, metadata:, logger:, connection:); end
  def logger; end
  def metadata; end
  def metadata_request; end
  def path; end
  def run; end
  def self.run(accession:, metadata:, logger:, connection:); end
end
class SdrClient::Deposit::SingleFileGroupingStrategy
  def self.run(uploads: nil); end
end
class SdrClient::Deposit::MatchingFileGroupingStrategy
  def self.run(uploads: nil); end
end
module SdrClient::Deposit::Files
end
class SdrClient::Deposit::Files::DirectUploadRequest < Struct
  def as_json; end
  def byte_size; end
  def byte_size=(_); end
  def checksum; end
  def checksum=(_); end
  def content_type; end
  def content_type=(_); end
  def filename; end
  def filename=(_); end
  def self.[](*arg0); end
  def self.from_file(path, file_name:, content_type:); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def to_json(*_args); end
end
class SdrClient::Deposit::Files::DirectUploadResponse < Struct
  def byte_size; end
  def byte_size=(_); end
  def checksum; end
  def checksum=(_); end
  def content_type; end
  def content_type=(_); end
  def created_at; end
  def created_at=(_); end
  def direct_upload; end
  def direct_upload=(_); end
  def filename; end
  def filename=(_); end
  def id; end
  def id=(_); end
  def key; end
  def key=(_); end
  def metadata; end
  def metadata=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def service_name; end
  def service_name=(_); end
  def signed_id; end
  def signed_id=(_); end
end
class SdrClient::Deposit::File
  def as_json; end
  def create_message_digest(algorithm, digest); end
  def initialize(external_identifier:, label:, filename:, access: nil, preserve: nil, shelve: nil, mime_type: nil, md5: nil, sha1: nil, use: nil); end
  def message_digests; end
end
module SdrClient::Deposit::FileMetadataBuilderOperations
end
class SdrClient::Deposit::FileMetadataBuilderOperations::MimeType
  def self.for(file_path:, **arg1); end
end
class SdrClient::Deposit::FileMetadataBuilderOperations::MD5
  def self.for(file_path:, **arg1); end
end
class SdrClient::Deposit::FileMetadataBuilderOperations::SHA1
  def self.for(file_path:, **arg1); end
end
class SdrClient::Deposit::FileMetadataBuilder
  def build; end
  def files; end
  def files_metadata; end
  def initialize(files:, files_metadata:); end
  def self.build(files:, files_metadata:); end
end
class SdrClient::Deposit::FileSet
  def as_json; end
  def file_args(upload, upload_metadata); end
  def files; end
  def initialize(label:, uploads: nil, uploads_metadata: nil, files: nil); end
  def label; end
end
class SdrClient::Deposit::Request
  def access; end
  def access_struct; end
  def administrative; end
  def apo; end
  def as_json; end
  def catkey; end
  def collection; end
  def copyright; end
  def download; end
  def embargo_access; end
  def embargo_release_date; end
  def file_sets; end
  def files_metadata; end
  def for(filename); end
  def identification; end
  def initialize(apo:, source_id:, label: nil, access: nil, download: nil, use_statement: nil, copyright: nil, collection: nil, catkey: nil, embargo_release_date: nil, embargo_access: nil, type: nil, viewing_direction: nil, file_sets: nil, files_metadata: nil); end
  def label; end
  def source_id; end
  def structural; end
  def type; end
  def use_statement; end
  def viewing_direction; end
  def with_file_sets(file_sets); end
end
class SdrClient::Deposit::MetadataBuilder
  def build_filesets(uploads:); end
  def files; end
  def grouping_strategy; end
  def initialize(metadata:, grouping_strategy:, logger:); end
  def label(index); end
  def logger; end
  def metadata; end
  def metadata_group(upload_group); end
  def with_uploads(upload_responses); end
end
class SdrClient::Deposit::ModelProcess
  def check_files_exist; end
  def child_files_match; end
  def connection; end
  def files; end
  def initialize(request_dro:, connection:, accession:, files: nil, logger: nil); end
  def logger; end
  def mime_types; end
  def request_dro; end
  def request_files; end
  def run; end
end
class SdrClient::Deposit::Process
  def check_files_exist; end
  def connection; end
  def files; end
  def grouping_strategy; end
  def initialize(metadata:, connection:, accession:, grouping_strategy: nil, files: nil, logger: nil); end
  def logger; end
  def metadata; end
  def mime_types; end
  def run; end
end
class SdrClient::Deposit::UnexpectedResponse
  def self.call(response); end
end
class SdrClient::Deposit::UpdateResource
  def connection; end
  def initialize(metadata:, logger:, connection:); end
  def logger; end
  def metadata; end
  def metadata_request; end
  def path(metadata); end
  def run; end
  def self.run(metadata:, logger:, connection:); end
end
class SdrClient::Deposit::UpdateDroWithFileIdentifiers
  def self.signed_id_map(upload_responses); end
  def self.update(request_dro:, upload_responses:); end
  def self.updated_structural(structural, signed_ids); end
end
class SdrClient::Deposit::UploadFiles
  def connection; end
  def direct_upload(metadata_json); end
  def file_metadata; end
  def initialize(file_metadata:, logger:, connection:); end
  def logger; end
  def run; end
  def self.upload(file_metadata:, logger:, connection:); end
  def unexpected_response(response); end
  def upload_file(filename:, url:, content_type:, content_length:); end
  def upload_file_metadata; end
  def upload_files(upload_responses); end
end
class SdrClient::Deposit::UploadFilesMetadataBuilder
  def build; end
  def filename_for(file_path); end
  def files; end
  def initialize(files:, mime_types:); end
  def mime_type_for(file_path); end
  def mime_types; end
  def self.build(files:, mime_types:); end
end
class SdrClient::Credentials
  def self.credentials_file; end
  def self.credentials_path; end
  def self.read; end
  def self.write(body); end
end
class SdrClient::Credentials::NoCredentialsError < StandardError
end
module SdrClient::Find
  def self.run(druid, url:, logger: nil); end
end
module SdrClient::Login
  def self.run(url:, login_service: nil, credential_store: nil); end
  extend Anonymous_Module_89
end
module Anonymous_Module_89
  include Dry::Monads::Result::Mixin
end
module SdrClient::LoginPrompt
  def self.run; end
end
module SdrClient::CLI
  def self.deposit(command, options, arguments); end
  def self.display_errors(errors); end
  def self.help; end
  def self.poll_for_job_complete(job_id:, url:); end
  def self.start(command, options, arguments = nil); end
  def self.validate_deposit_options(options); end
end
class SdrClient::Connection
  def connection; end
  def get(**, &&); end
  def initialize(url:, token: nil); end
  def post(**, &&); end
  def proxy(to); end
  def put(**, &&); end
  def token; end
  def url; end
  include Anonymous_Module_89
end
module SdrClient::BackgroundJobResults
  def self.show(url:, job_id:); end
end
class SdrClient::Error < StandardError
end
