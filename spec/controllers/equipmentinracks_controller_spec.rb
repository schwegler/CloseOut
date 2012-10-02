require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EquipmentinracksController do

  # This should return the minimal set of attributes required to create a valid
  # Equipmentinrack. As you add validations to Equipmentinrack, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EquipmentinracksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all equipmentinracks as @equipmentinracks" do
      equipmentinrack = Equipmentinrack.create! valid_attributes
      get :index, {}, valid_session
      assigns(:equipmentinracks).should eq([equipmentinrack])
    end
  end

  describe "GET show" do
    it "assigns the requested equipmentinrack as @equipmentinrack" do
      equipmentinrack = Equipmentinrack.create! valid_attributes
      get :show, {:id => equipmentinrack.to_param}, valid_session
      assigns(:equipmentinrack).should eq(equipmentinrack)
    end
  end

  describe "GET new" do
    it "assigns a new equipmentinrack as @equipmentinrack" do
      get :new, {}, valid_session
      assigns(:equipmentinrack).should be_a_new(Equipmentinrack)
    end
  end

  describe "GET edit" do
    it "assigns the requested equipmentinrack as @equipmentinrack" do
      equipmentinrack = Equipmentinrack.create! valid_attributes
      get :edit, {:id => equipmentinrack.to_param}, valid_session
      assigns(:equipmentinrack).should eq(equipmentinrack)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Equipmentinrack" do
        expect {
          post :create, {:equipmentinrack => valid_attributes}, valid_session
        }.to change(Equipmentinrack, :count).by(1)
      end

      it "assigns a newly created equipmentinrack as @equipmentinrack" do
        post :create, {:equipmentinrack => valid_attributes}, valid_session
        assigns(:equipmentinrack).should be_a(Equipmentinrack)
        assigns(:equipmentinrack).should be_persisted
      end

      it "redirects to the created equipmentinrack" do
        post :create, {:equipmentinrack => valid_attributes}, valid_session
        response.should redirect_to(Equipmentinrack.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved equipmentinrack as @equipmentinrack" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipmentinrack.any_instance.stub(:save).and_return(false)
        post :create, {:equipmentinrack => {}}, valid_session
        assigns(:equipmentinrack).should be_a_new(Equipmentinrack)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipmentinrack.any_instance.stub(:save).and_return(false)
        post :create, {:equipmentinrack => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested equipmentinrack" do
        equipmentinrack = Equipmentinrack.create! valid_attributes
        # Assuming there are no other equipmentinracks in the database, this
        # specifies that the Equipmentinrack created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Equipmentinrack.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => equipmentinrack.to_param, :equipmentinrack => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested equipmentinrack as @equipmentinrack" do
        equipmentinrack = Equipmentinrack.create! valid_attributes
        put :update, {:id => equipmentinrack.to_param, :equipmentinrack => valid_attributes}, valid_session
        assigns(:equipmentinrack).should eq(equipmentinrack)
      end

      it "redirects to the equipmentinrack" do
        equipmentinrack = Equipmentinrack.create! valid_attributes
        put :update, {:id => equipmentinrack.to_param, :equipmentinrack => valid_attributes}, valid_session
        response.should redirect_to(equipmentinrack)
      end
    end

    describe "with invalid params" do
      it "assigns the equipmentinrack as @equipmentinrack" do
        equipmentinrack = Equipmentinrack.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipmentinrack.any_instance.stub(:save).and_return(false)
        put :update, {:id => equipmentinrack.to_param, :equipmentinrack => {}}, valid_session
        assigns(:equipmentinrack).should eq(equipmentinrack)
      end

      it "re-renders the 'edit' template" do
        equipmentinrack = Equipmentinrack.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipmentinrack.any_instance.stub(:save).and_return(false)
        put :update, {:id => equipmentinrack.to_param, :equipmentinrack => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested equipmentinrack" do
      equipmentinrack = Equipmentinrack.create! valid_attributes
      expect {
        delete :destroy, {:id => equipmentinrack.to_param}, valid_session
      }.to change(Equipmentinrack, :count).by(-1)
    end

    it "redirects to the equipmentinracks list" do
      equipmentinrack = Equipmentinrack.create! valid_attributes
      delete :destroy, {:id => equipmentinrack.to_param}, valid_session
      response.should redirect_to(equipmentinracks_url)
    end
  end

end
