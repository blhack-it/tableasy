# frozen_string_literal: true

require 'active_support/dependencies'
require 'active_support/lazy_load_hooks'

module Tableasy

  autoload :Table, 'tableasy/table'

  class Table

    autoload :Cell, 'tableasy/table/cell'
    autoload :Row, 'tableasy/table/row'

  end

end


ActiveSupport.on_load :action_view do
  require 'tableasy/tables_helper'
  ::ActionView::Base.send :include, Tableasy::TablesHelper
end
