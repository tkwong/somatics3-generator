class <%=namespace_class%>::<%= controller_class_name %>Controller < <%=namespace_class%>::AdminController
  # Redmine Filters
  # available_filters :id,  {:name => 'ID', :type => :integer, :order => 1}
  <% attributes.each_with_index do |attribute, index| -%>
  # available_filters :<%= attribute.name %>,  {:name => '<%= attribute.name.humanize %>', :type => :<%= attribute.type %>, :order => <%= index %>}
  <% end -%>

  default_filter :id
  <% attributes.each do |attribute| -%>
  # default_filter :<%= attribute.name %>
  <% end %>

  # GET /<%= table_name %>
  # GET /<%= table_name %>.xml
  def index
    @fields = <%= attributes.collect {|attribute| attribute.name}.inspect %>
    @headers = <%= attributes.collect {|attribute| attribute.name.humanize}.inspect %>
    respond_to do |format|
      format.html {
        @<%= table_name %> = <%= class_name %>.paginate(:page => params[:<%= table_name %>_page], :conditions => query_statement, :order => (params[:<%= singular_name %>_sort].gsub('_reverse', ' DESC') unless params[:<%= singular_name %>_sort].blank?))
      }
      format.xml { 
        @<%= table_name %> = <%= class_name %>.all(:conditions => query_statement)
      }
      format.csv {
        @<%= table_name %> = <%= class_name %>.all(:conditions => query_statement)
        csv_string = FasterCSV.generate do |csv|
        	csv << @headers
        	@<%= table_name %>.each do |<%= singular_name %>|
        	  csv << @fields.collect { |f| <%= singular_name %>.send(f) }        	    
      	  end
      	end
      	send_data csv_string, :type => 'text/csv; charset=iso-8859-1; header=present', 
  				:disposition => "attachment; filename=<%= table_name %>.csv"
      }
      format.xls {
        @<%= table_name %> = <%= class_name %>.all(:conditions => query_statement)
        render :xls => @<%= table_name %>
      }
      format.pdf {
        params[:fields] = @fields
        @<%= table_name %> = <%= class_name %>.all(:conditions => query_statement)
        prawnto :prawn => {:text_options => { :wrap => :character }, :page_layout => :portrait }
      }
    end
  end

  # GET /<%= table_name %>/1
  # GET /<%= table_name %>/1.xml
  def show
    @<%= file_name %> = <%= class_name %>.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @<%= file_name %> }
    end
  end

  # GET /<%= table_name %>/1/edit
  def edit
    @<%= file_name %> = <%= class_name %>.find(params[:id])
  end

  # PUT /<%= table_name %>/1
  # PUT /<%= table_name %>/1.xml
  def update
    @<%= file_name %> = <%= class_name %>.find(params[:id])

    respond_to do |format|
      if @<%= file_name %>.update_attributes(params[:<%= file_name %>])
        flash[:notice] = '<%= class_name %> was successfully updated.'
        format.html { redirect_to([:admin,@<%= file_name %>]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @<%= file_name %>.errors, :status => :unprocessable_entity }
      end
    end
  end
end
