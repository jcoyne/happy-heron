# typed: false
# frozen_string_literal: true

# Handles CRUD for Collections
class CollectionsController < ObjectsController
  before_action :authenticate_user!
  before_action :ensure_sdr_updatable
  verify_authorized

  def new
    collection = Collection.new(creator: current_user)
    authorize! collection

    @form = CollectionForm.new(collection)
    @form.prepopulate!
  end

  def edit
    collection = Collection.find(params[:id])
    authorize! collection

    @form = CollectionForm.new(collection)
    @form.prepopulate!
  end

  def create
    collection = Collection.new(creator: current_user)
    authorize! collection

    @form = collection_form(collection)
    if @form.validate(collection_params) && @form.save
      after_save(collection)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    collection = Collection.find(params[:id])
    authorize! collection
    point1 = CollectionChangeSet::PointInTime.new(collection)
    @form = collection_form(collection)
    if @form.validate(collection_params) && @form.save
      after_save(collection, context: { change_set: point1.diff(collection) })
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @collection = Collection.find(params[:id])
    authorize! @collection
  end

  def destroy
    collection = Collection.find(params[:id])
    authorize! collection

    collection.destroy

    redirect_to dashboard_path
  end

  private

  sig { params(collection: Collection, context: Hash).void }
  def after_save(collection, context: {})
    collection.event_context = context.merge(user: current_user)
    collection.update_metadata!
    if deposit_button_pushed?
      collection.begin_deposit!
      redirect_to dashboard_path
    else
      redirect_to collection_path(collection)
    end
  end

  def collection_form(collection)
    return CollectionForm.new(collection) if deposit_button_pushed?

    DraftCollectionForm.new(collection)
  end

  def collection_params
    params.require(:collection).permit(:name, :description, :access,
                                       :manager_sunets, :depositor_sunets,
                                       :review_enabled, :reviewer_sunets, :license_option,
                                       :required_license, :default_license,
                                       :email_when_participants_changed,
                                       :email_depositors_status_changed,
                                       :release_option, :release_duration,
                                       'release_date(1i)', 'release_date(2i)', 'release_date(3i)',
                                       related_links_attributes: %i[_destroy id link_title url],
                                       contact_emails_attributes: %i[_destroy id email])
  end
end
