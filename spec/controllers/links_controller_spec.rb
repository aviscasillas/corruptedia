require 'spec_helper'

describe LinksController do
	context "#index" do
		before { get :index, :format => :json }
    it { should respond_with :success }
  end
end
