class BooksController < ApplicationController
  
  def new
    @book =Book.new
  end
   
   def index

    @books = Book.all
    @book =Book.new
   end
  
   def create
    @book = Book.new(book_params)
    if @book.save
      flash[:complete]="Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
      
      
    end 
      
   end
  


  def show
    @book =Book.find(params[:id])
  end

  def edit
    @book =Book.find(params[:id])
  end
   
   #def update
   #book = Book.find(params[:id])
   #book.update(book_params)
    #redirect_to book_path(book.id)
  #end
 
  
    def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:complete]="Book was successfully updated."
      redirect_to book_path(@book.id)
    else
    #@book =Book.find(params[:id])
      render :edit
     end
    end
  

def destroy
  book = Book.find(params[:id])
  book.delete
  redirect_to "/books"
end
# DELETE /books/:id(.:format)  
#estroy_list DELETE /lists/:id(.:format)
#lists#destroy


                                                                        
private

 def book_params
  params.require(:book).permit(:title, :body)
 end
 
end
