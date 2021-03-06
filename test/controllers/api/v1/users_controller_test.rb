#
# Copyright 2013 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public
# License as published by the Free Software Foundation; either version
# 2 of the License (GPLv2) or (at your option) any later version.
# There is NO WARRANTY for this software, express or implied,
# including the implied warranties of MERCHANTABILITY,
# NON-INFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. You should
# have received a copy of GPLv2 along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

require 'minitest_helper'

class Api::V1::UsersControllerTest < MiniTest::Rails::ActionController::TestCase
  def test_list_owners_username
    assert_routing "/api/users/admin@mail.com/owners", :controller => "api/v1/users",
      :action => "list_owners", :username => "admin@mail.com"
  end
end
