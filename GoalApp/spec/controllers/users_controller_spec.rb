require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe '#new' do
    context 'if user is not logged in' do
      it 'should render the new view' do
        get :new
        expect(status).to be_success
        expect(response).to render_template('new')
      end
    end

    context 'if user is logged in' do
      it 'should redirect to user show view'
    end
  end

  describe '#create' do
    context 'params contain valid user' do
      it 'should find valid user'
      it 'should save the user'
      it 'should redirect to show page'
    end

    context 'params are missing user information' do
      it 'should not find valid user'
      it 'should redirect to new view'
    end

  end

  describe '#show' do
    it 'should render show view'
  end
end
