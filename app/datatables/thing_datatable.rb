class ThingDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
  # depending on gems available in your project.
  # include AjaxDatatablesRails::Extensions::Kaminari
  include AjaxDatatablesRails::Extensions::WillPaginate
  # include AjaxDatatablesRails::Extensions::SimplePaginator
  def_delegators :@view, :link_to, :thing_path

  def sortable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
    @sortable_columns ||= ['things.name']
  end

  def searchable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
    @searchable_columns ||= ['things.name', 'things.description']
  end

  private

  def data
    records.map do |record|
      [
        link_to(record.name, thing_path(record.id)),
        record.description
      ]
    end
  end

  def get_raw_records
    Thing.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
